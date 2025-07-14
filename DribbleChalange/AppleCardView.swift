//
//  AppleCardView.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct AppleCardView: View {
    
    let product: Product
    
    let CardWidth: CGFloat = 250
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Image with top corner radius
            Image(product.imgName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: CardWidth, maxHeight: 300)
                .clipped()
            
            VStack(alignment: .leading, spacing: 8) {
                Text(product.title)
                    .modifier(Header3())
                
                Text(product.description)
                    .modifier(BodyStyle())
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 16)
        }
        .background(Color("BackgroundFields"))
        .frame(maxWidth: CardWidth)
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))  // ✅ Apple uses 24pt radius often
        .shadow(color: .black.opacity(0.08), radius: 8, x: 0, y: 4)  // ✅ Subtle shadow
        .shadow(color: .black.opacity(0.04), radius: 1, x: 0, y: 1)  // ✅ Inner shadow for depth
    }
}

#Preview {
    AppleCardView(product: Product.example1())
        .padding()
}