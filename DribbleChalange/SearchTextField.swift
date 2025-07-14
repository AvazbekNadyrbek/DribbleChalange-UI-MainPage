//
//  SearchTextField.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct SearchTextField: View {
    
    @State private var text: String = ""
    
    var body: some View {
        HStack {
            TextField("Search for 3D products",text: $text)
            Image(systemName: "magnifyingglass")
                .foregroundStyle(Color("AccentColor"))
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color("BackgroundFields")))
    }
}

#Preview {
    SearchTextField()
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background1"))
        .previewLayout(.fixed(width: 400, height: 100))
}
