//
//  CustomTabView.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

enum TabCustom: Int, CaseIterable {
    case home = 1
    case favorites = 2
    case explore = 3
    case profile = 4
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .favorites: return "Favorites"
        case .explore: return "Explore"
        case .profile: return "Profile"
        }
    }
    
    var icon: String {
        switch self {
        case .home: return "house.fill"
        case .favorites: return "heart.fill"
        case .explore: return "cube.fill"
        case .profile: return "person.fill"
        }
    }
    
    var unselectedIcon: String {
        switch self {
        case .home: return "house"
        case .favorites: return "heart"
        case .explore: return "cube"
        case .profile: return "person"
        }
    }
}

struct ContentView: View {
    @State private var selectedTab: TabCustom = .home

    init() {
        // Hide default tab bar
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {

            // Main TabView content
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag(TabCustom.home)
                
                FavoritesView()
                    .tag(TabCustom.favorites)
                
                ExploreView()
                    .tag(TabCustom.explore)
                
                ProfileView()
                    .tag(TabCustom.profile)
            }
            .background(Color.clear)
            
            // Custom Tab Bar
            CustomTabBar(selectedTab: $selectedTab)
        }
        .ignoresSafeArea(.keyboard)   // keep existing keyboard rule
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: TabCustom
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(TabCustom.allCases, id: \.self) { tab in
                Button(action: {
                    selectedTab = tab
                }) {
                    VStack(spacing: 4) {
                        Image(systemName: selectedTab == tab ? tab.icon : tab.unselectedIcon)
                            .font(.system(size: 24, weight: .medium))
                            .foregroundColor(selectedTab == tab ? .white : .white.opacity(0.6))
                        
                        Text(tab.title)
                            .font(.caption)
                            .foregroundColor(selectedTab == tab ? .white : .white.opacity(0.6))
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                }
            }
        }
        .background(
            // Custom background with corner radius
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("Primary"))
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: -5)
        )
        .padding(.horizontal, 20)
        .padding(.bottom, 10)
    }
}

#Preview {
    ContentView()
}
