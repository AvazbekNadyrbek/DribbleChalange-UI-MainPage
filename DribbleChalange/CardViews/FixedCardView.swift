//
//  FixedCardView.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct FixedCardView: View {
    
    let product: Product
    
    let CardWidth: CGFloat = 250
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {  // ✅ No spacing
            // Image goes to the very top
            Image(product.imgName)
                .resizable()
                .scaledToFill()
                .frame(width: CardWidth, height: 200)
                .clipped()
            
            // Content section with background
            VStack(alignment: .leading, spacing: 10) {
                Text(product.title)
                    .modifier(Header3())
                    .padding(.horizontal)
                    .padding(.top)
                
                Text(product.description)
                    .modifier(BodyStyle())
                    .padding(.horizontal)
                    .padding(.bottom)
            }
            .background(Color("BackgroundFields"))
        }
        .frame(maxWidth: CardWidth)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))  // ✅ This clips the whole card
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}

#Preview {
    FixedCardView(product: Product.example1())
        .padding()
}