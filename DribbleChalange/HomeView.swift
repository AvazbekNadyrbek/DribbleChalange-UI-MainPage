//
//  HomeView.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            WelcomeHeader()
                .padding(.horizontal)
            Text("Recomended Products")
                .modifier(Header2())
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 20) {
                    ImprovedCardView(product: Product.example1())
                        .padding(.leading, 30)
                    ImprovedCardView(product: Product.example2())
                        .padding(.trailing, 30)
                }
                
            }
            .frame(height: 450)
        }
        .padding(.vertical)
    }
    
        
}

#Preview {
    HomeView()
        .frame(maxHeight: .infinity)
        .background(Color("Background1"))
}
