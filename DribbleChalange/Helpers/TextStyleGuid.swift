//
//  TextStyleGuid.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct Header1: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(.largeTitle, design: .serif))
            .foregroundColor(Color("Primary"))
    }
    
}

struct Header2: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(Color("Primary"))
    }
    
}

struct Header3: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(Color("Primary"))
    }
    
}

struct BodyStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(Color("Primary"))
    }
    
}

struct GrayBodyStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(Color.gray)
    }
    
}

struct FootNote: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundColor(Color("Primary"))
    }
    
}

struct TextStyleGuid: View {
    var body: some View {
        VStack {
            Text("Hello! Avazbek")
                .modifier(Header1())
            Text("Hello! Avazbek")
                .modifier(Header2())
            Text("Hello! Avazbek")
                .modifier(Header3())
            Text("Hello! Avazbek") 
                .modifier(BodyStyle())
            Text("Hello! Avazbek")
                .modifier(FootNote())
            Text("Hello! Avazbek")
                .modifier(GrayBodyStyle())
        }
    }
}

#Preview {
    TextStyleGuid()
}
