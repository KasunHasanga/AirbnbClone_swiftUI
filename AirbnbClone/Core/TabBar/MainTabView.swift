//
//  MainTabView.swift
//  AirbnbClone
//
//  Created by kasun Hasanga on 2023-12-14.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem { Label("Explore",systemImage: "magnifyingglass") }
            
            WhishlistView()
                .tabItem { Label("Whishlist",systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile",systemImage: "person") }
        }
    }
}

#Preview {
    MainTabView()
}
