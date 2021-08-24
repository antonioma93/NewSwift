//
//  ConvertUIViewIntoImage.swift
//  NewSwift
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct ConvertUIViewIntoImage: View {
    var textView: some View {
        Text("Hello, World!")
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
    var body: some View {
        VStack {
            textView
            
            Button("Save to image") {
                let image = textView.snapshot()
                
                UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
            }
        }
    }
}

struct ConvertUIViewIntoImage_Previews: PreviewProvider {
    static var previews: some View {
        ConvertUIViewIntoImage()
    }
}

extension View {
    func snapshot() -> UIImage {
        let controller = UIHostingController(rootView: self)
        let view = controller.view
        
        let targetSize = controller.view.intrinsicContentSize
        view?.bounds = CGRect(origin: .zero, size: targetSize)
        view?.backgroundColor = .clear
        
        let renderer = UIGraphicsImageRenderer(size: targetSize)
        
        return renderer.image { _ in
            view?.drawHierarchy(in: controller.view.bounds, afterScreenUpdates: true)
        }
    }
}
