//
//  CardPicker.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

enum SearchFilter: String, CaseIterable {
    case recent = "Recent"
    case trending = "Trending"
    case popular = "Popular"
    case premium = "Premium"
}

struct CardPicker: View {
    
    @State private var selection: SearchFilter = .recent
    
    var body: some View {
        HStack {
            ForEach(SearchFilter.allCases, id: \.self) { filter in
                CardPickerItem(searchFilter: filter, selection: selection)
                    .onTapGesture {
                        selection = filter
                    }
                if filter != .premium {
                    Spacer()
                }
            }
            .animation(.default, value: selection)
            //.frame(maxWidth: .infinity, alignment: .center)
        }
    }
}


struct CardPickerItem: View {
    
    let searchFilter: SearchFilter
    let selection: SearchFilter
    
    var imageName: String {
        switch searchFilter {
        case .recent:
            return "clock"
        case .trending:
            return "flame"
        case .popular:
            return "crown"
        case .premium:
            return "diamond"
        }
    }
    
    var backgroundColor: Color {
        searchFilter == selection ? Color("Secondary") : Color("BackgroundFields")
    }
    
    var tintColor: Color {
        searchFilter == selection ? Color("Secondary") : .gray
    }
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .padding()
                .foregroundColor(selection == searchFilter ? .white : .gray)
                .background(RoundedRectangle(cornerRadius: 10).fill(backgroundColor))
            
            Text(searchFilter.rawValue)
                .foregroundStyle(tintColor)
                .modifier(FootNote())
        }
        
    }
}

#Preview {
    CardPicker()
    
        
    
}
#Preview {
    CardPickerItem(searchFilter: .premium, selection: .recent)

}