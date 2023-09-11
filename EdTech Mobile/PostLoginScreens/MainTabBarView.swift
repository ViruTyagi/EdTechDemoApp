//
//  MainTabBarView.swift
//  EdTech Mobile
//
//  Created by Vishavesh on 11/09/23.
//

import SwiftUI

struct MainTabBarView: View {
    var body: some View {
        ZStack {
            TabView {
                HomeScreenView()
                    .tabItem {
                        Label("Courses", systemImage: "house")
                    }
                LoginScreenView()
                    .tabItem {
                        Label("Profile", systemImage: "house")
                    }
                LoginScreenView()
                    .tabItem {
                        Label("Settings", systemImage: "house")
                    }
            }
            .tabViewStyle(.automatic)
        }
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}
