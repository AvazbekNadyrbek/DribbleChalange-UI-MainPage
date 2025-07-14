//
//  ModernTabView.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct ModernTabView: View {
    @State private var selectedTab: Tab = .home

    var body: some View {
        TabView(selection: $selectedTab) {
            // Home Tab
            HomeView()
                .tag(Tab.home)
                .tabItem {
                    Image(systemName: selectedTab == .home ? Tab.home.icon : Tab.home.unselectedIcon)
                    Text(Tab.home.title)
                }
            
            // Favorites Tab
            FavoritesView()
                .tag(Tab.favorites)
                .tabItem {
                    Image(systemName: selectedTab == .favorites ? Tab.favorites.icon : Tab.favorites.unselectedIcon)
                    Text(Tab.favorites.title)
                }
            
            // Explore Tab
            ExploreView()
                .tag(Tab.explore)
                .tabItem {
                    Image(systemName: selectedTab == .explore ? Tab.explore.icon : Tab.explore.unselectedIcon)
                    Text(Tab.explore.title)
                }
            
            // Profile Tab
            ProfileView()
                .tag(Tab.profile)
                .tabItem {
                    Image(systemName: selectedTab == .profile ? Tab.profile.icon : Tab.profile.unselectedIcon)
                    Text(Tab.profile.title)
                }
        }
        .accentColor(.black)
        .toolbarBackground(.blue, for: .tabBar)
        .toolbarBackground(.visible, for: .tabBar)
        .toolbarColorScheme(.dark, for: .tabBar)
    }
}

#Preview {
    ModernTabView()
}
