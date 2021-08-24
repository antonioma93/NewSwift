//
//  ApplePayTest.swift
//  NewSwift
//
//  Created by Massa Antonio on 20/07/21.
//

import SwiftUI

struct ApplePayTest: View {
	var itemCost = 1000
	var shippingCost = 100

    var body: some View {
		let applePay = ApplePayManager(countryCode: "IT", currencyCode: "EUR", itemCost: itemCost, shippingCost: shippingCost)
		VStack {
			Image("applepay")
				.onTapGesture {
					applePay.buyBtnTapped()
				}
		}
    }
}

struct ApplePayTest_Previews: PreviewProvider {
    static var previews: some View {
        ApplePayTest()
    }
}
