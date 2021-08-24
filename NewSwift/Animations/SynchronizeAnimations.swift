//
//  SynchronizeAnimations.swift
//  NewSwift
//
//  Created by Massa Antonio on 30/06/21.
//

import SwiftUI

struct SynchronizeAnimations: View {
    @Namespace private var animation
    @State private var isZoomed = false
    
    var frame: CGFloat {
        isZoomed ? 300 : 44
    }
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: frame, height: frame)
                        .padding(.top, isZoomed ? 20 : 0)
                    
                    if isZoomed == false {
                        Text("La maschera - 2010")
                            .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                            .font(.headline)
                        Spacer()
                    }
                }
                
                if isZoomed == true {
                    Text("La Maschera - 2010")
                        .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                        .font(.headline)
                        .padding(.bottom, 60)
                    Spacer()
                }
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                isZoomed.toggle()
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 400)
        .background(Color(white: 0.9))
        .foregroundColor(.black)
    }
}

struct SynchronizeAnimations_Previews: PreviewProvider {
    static var previews: some View {
        SynchronizeAnimations()
    }
}
