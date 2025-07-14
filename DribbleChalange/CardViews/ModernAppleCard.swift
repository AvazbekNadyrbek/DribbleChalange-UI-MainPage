//
//  ModernAppleCard.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct ModernAppleCard: View {
    
    let product: Product
    @State private var isPressed = false
    
    let CardWidth: CGFloat = 250
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Image section
            Image(product.imgName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: CardWidth, maxHeight: 300)
                .clipped()
            
            // Content section
            VStack(alignment: .leading, spacing: 12) {
                Text(product.title)
                    .modifier(Header3())
                
                Text(product.description)
                    .modifier(BodyStyle())
                    .lineLimit(3)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .background(Color("BackgroundFields"))
        .frame(maxWidth: CardWidth)
        .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))  // ✅ Large continuous radius
        .scaleEffect(isPressed ? 0.95 : 1.0)  // ✅ Apple-style press animation
        .shadow(
            color: .black.opacity(isPressed ? 0.15 : 0.1),
            radius: isPressed ? 5 : 12,
            x: 0,
            y: isPressed ? 2 : 8
        )
        .animation(.easeInOut(duration: 0.2), value: isPressed)
        .onTapGesture {
            // Handle tap
        }
        .onLongPressGesture(minimumDuration: 0) { 
            // Handle press state
        } onPressingChanged: { pressing in
            isPressed = pressing
        }
    }
}

#Preview {
    ModernAppleCard(product: Product.example1())
        .padding()
}
