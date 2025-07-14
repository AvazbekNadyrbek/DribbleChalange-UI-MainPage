//
//  GlassCard.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct GlassCard: View {
    
    let product: Product
    
    let CardWidth: CGFloat = 250
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
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
        .frame(maxWidth: CardWidth)
        .background(
            // ✅ Glassmorphism background
            RoundedRectangle(cornerRadius: 32, style: .continuous)
                .fill(Color("BackgroundFields").opacity(0.8))
                .background(
                    RoundedRectangle(cornerRadius: 32, style: .continuous)
                        .fill(.ultraThinMaterial)
                )
        )
        .overlay(
            // ✅ Subtle border
            RoundedRectangle(cornerRadius: 32, style: .continuous)
                .stroke(.white.opacity(0.2), lineWidth: 0.5)
        )
        .shadow(color: .black.opacity(0.1), radius: 20, x: 0, y: 10)
    }
}

#Preview {
    GlassCard(product: Product.example1())
        .padding()
}