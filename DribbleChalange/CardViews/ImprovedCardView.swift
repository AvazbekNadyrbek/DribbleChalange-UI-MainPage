//
//  ImprovedCardView.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct ImprovedCardView: View {
    
    let product: Product
    
    let CardWidth: CGFloat = 250
    
    var body: some View {
        VStack(spacing: 0) {  // ✅ No spacing between image and content
            // Image section - fills top of card
            Image(product.imgName)
                .resizable()
                .scaledToFill()  // ✅ scaledToFill for better coverage
                .frame(width: CardWidth, height: 200)  // ✅ Fixed height for consistency
                .clipped()
            
            // Content section
            VStack(alignment: .leading, spacing: 12) {
                Text(product.title)
                    .modifier(Header3())
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(product.description)
                    .modifier(BodyStyle())
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .background(Color("BackgroundFields"))
        }
        .frame(width: CardWidth)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))  // ✅ Clips entire card
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}

#Preview {
    ImprovedCardView(product: Product.example1())
        .padding()
}