//
//  ApplePayManager.swift
//  NewSwift
//
//  Created by Massa Antonio on 20/07/21.
//

import Foundation
import PassKit

final class ApplePayManager: NSObject {
	var countryCode: String
	var currencyCode: String
	var shippingMethod = PKShippingMethod()
	var itemCost: Int
	var shippingCost: Int

	private lazy var billingContact: PKContact = {
		let contact: PKContact = PKContact()
		var nameComponents = PersonNameComponents()
		nameComponents.familyName = "Massa"
		contact.emailAddress = "antomassa@icloud.com"
		contact.name = nameComponents
		contact.phoneNumber = CNPhoneNumber(stringValue: "3345303530")
		let postalAddress: CNMutablePostalAddress = CNMutablePostalAddress()
		postalAddress.postalCode = ""
		postalAddress.city = ""
		postalAddress.country = ""
		postalAddress.state = ""
		postalAddress.street = ""
		postalAddress.subAdministrativeArea = ""
		postalAddress.subLocality = ""

		contact.postalAddress = postalAddress
		return contact

	}()

	func makeContact() -> PKContact {
		let contact = PKContact()

		contact.emailAddress = "antomassa@icloud.com"
		contact.phoneNumber = CNPhoneNumber(stringValue: "3345303530")

		var name = PersonNameComponents()
		name.givenName = "Massa"
		contact.name = name

		let address = CNMutablePostalAddress()
		address.street = "Via tizioCaio 9, Milano, Italia, 20133"
		contact.postalAddress = address

		return contact
	}

	private lazy var paymnetRequest: PKPaymentRequest = {
		let request: PKPaymentRequest = PKPaymentRequest()
		let merchandId = "Apple"
		//label here can be passed in as a variable like we do itemCost and shippingCost.
		let item = PKPaymentSummaryItem(label: "Piano", amount: NSDecimalNumber(integerLiteral: itemCost))
		let shippingMethod = PKShippingMethod(label: "Plane", amount: NSDecimalNumber(integerLiteral: shippingCost))
		let summary = PKPaymentSummaryItem(label: "Total", amount: NSDecimalNumber(integerLiteral: itemCost + shippingCost))

		shippingMethod.identifier = "iOS App Shipping"
		request.merchantIdentifier = merchandId
		request.billingContact = billingContact
		request.countryCode = countryCode //"US", "IT"
		request.currencyCode = currencyCode //"EUR", "USD"
		request.merchantCapabilities = .capability3DS
		request.paymentSummaryItems = [item, shippingMethod, summary]
		request.requiredBillingContactFields = [.emailAddress, .name, .phoneNumber, .postalAddress]
		request.requiredShippingContactFields = [.emailAddress, .name, .phoneNumber, .postalAddress]
		request.shippingContact = makeContact()
		request.shippingMethods = [shippingMethod]
		request.shippingType = .shipping
		request.supportedCountries = ["IT"]
		request.supportedNetworks = [.maestro, .masterCard, .quicPay, .visa, .vPay]

		return request
	}()

	var btnApplePay: PKPaymentButton = {
		let btn: PKPaymentButton = PKPaymentButton(paymentButtonType: .buy, paymentButtonStyle: .black)
		btn.cornerRadius = 10

		return btn
	}()

	func buyBtnTapped() {
		guard let paymentVC = PKPaymentAuthorizationViewController(paymentRequest: paymnetRequest),
			  let window = UIApplication.shared.connectedScenes
				.filter({$0.activationState == .foregroundActive})
				.map({$0 as? UIWindowScene })
				.compactMap({$0})
				.first?.windows
				.filter({ $0.isKeyWindow}).first
		else {
					return
				}
		paymentVC.delegate = self
		window.rootViewController?.present(paymentVC, animated: true)
	}

	init(countryCode: String, currencyCode: String, itemCost: Int, shippingCost: Int) {
		self.countryCode = countryCode
		self.currencyCode = currencyCode
		self.itemCost = itemCost
		self.shippingCost = shippingCost

	}
}

extension ApplePayManager: PKPaymentAuthorizationViewControllerDelegate {
	func paymentAuthorizationViewControllerDidFinish(_ controller: PKPaymentAuthorizationViewController) {
		controller.dismiss(animated: true, completion: nil)
	}

	func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, handler completion: @escaping (PKPaymentAuthorizationResult) -> Void) {

		 completion(.init(status: .success, errors: nil))
	 }
	 //
	 func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelectShippingContact contact: PKContact, handler completion: @escaping (PKPaymentRequestShippingContactUpdate) -> Void) {

		 completion(.init(paymentSummaryItems: [PKPaymentSummaryItem(label: "ios", amount: 1200)]))
	 }
}

