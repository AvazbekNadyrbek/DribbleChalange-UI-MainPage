//
//  TabViewExample.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

// ✅ Define tabs using an enum for better organization
enum Tab: Int, CaseIterable {
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

struct AdvancedTabView: View {
    @State private var selectedTab: Tab = .home

    init() {
        // ✅ Customize TabBar appearance globally
        setupTabBarAppearance()
    }
    
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
        .accentColor(.white)  // ✅ Selected tab color
    }
    
    // ✅ Custom TabBar styling function
    private func setupTabBarAppearance() {
        let appearance = UITabBarAppearance()
        
        // Background color
        appearance.backgroundColor = UIColor(Color("Primary"))  // Using your custom color
        
        // Remove default background
        appearance.shadowColor = UIColor.clear
        appearance.backgroundEffect = nil
        
        // Selected tab item color
        appearance.stackedLayoutAppearance.selected.iconColor = UIColor.white
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
        
        // Unselected tab item color
        appearance.stackedLayoutAppearance.normal.iconColor = UIColor.white.withAlphaComponent(0.6)
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.white.withAlphaComponent(0.6)
        ]
        
        // Apply appearance
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        
        // Corner radius (requires additional setup)
        UITabBar.appearance().layer.cornerRadius = 25
        UITabBar.appearance().layer.masksToBounds = true
    }
}

// Sample Views for each tab
struct FavoritesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "heart.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.red)
                Text("Your Favorites")
                    .font(.title)
            }
            .navigationTitle("Favorites")
        }
    }
}

struct ExploreView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "cube.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                Text("Explore Content")
                    .font(.title)
            }
            .navigationTitle("Explore")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.green)
                Text("Your Profile")
                    .font(.title)
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    AdvancedTabView()
}
