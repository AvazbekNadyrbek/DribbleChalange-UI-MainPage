//
//  WelcomeHeader.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct WelcomeHeader: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text("Good Morning,")
                    .modifier(Header2())
                Text("Avazbek")
                    .modifier(Header1())
            }
            Spacer()
            Image("profileImage")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
        }
    }
}

#Preview {
    WelcomeHeader()
}
