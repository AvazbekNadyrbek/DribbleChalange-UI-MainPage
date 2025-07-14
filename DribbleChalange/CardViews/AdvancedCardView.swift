//
//  AdvancedCardView.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct AdvancedCardView: View {
    
    let product: Product
    
    let CardWidth: CGFloat = 250
    
    var body: some View {
        ZStack(alignment: .bottom) {
            // Background image that fills the entire card
            Image(product.imgName)
                .resizable()
                .scaledToFill()
                .frame(width: CardWidth, height: 400)
                .clipped()
            
            // Content overlay at the bottom
            VStack(alignment: .leading, spacing: 12) {
                Text(product.title)
                    .modifier(Header3())
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                
                Text(product.description)
                    .modifier(BodyStyle())
                    .foregroundColor(.white.opacity(0.9))
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                    .lineLimit(3)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                // Gradient overlay for better text readability
                LinearGradient(
                    colors: [
                        .clear,
                        .black.opacity(0.3),
                        .black.opacity(0.6)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
        }
        .frame(width: CardWidth, height: 400)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}

#Preview {
    AdvancedCardView(product: Product.example1())
        .padding()
}