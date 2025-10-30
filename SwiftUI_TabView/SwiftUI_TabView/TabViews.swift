//
//  TabViews.swift
//  SwiftUI_TabView
//
//  Created by Ambreen Bano on 03/10/25.
//

import SwiftUI

struct TabViews: View {
    @State var selectedTab: Int = 1
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            HomeScreen(selectedTab: $selectedTab)
                .tabItem {
                    //Default Label is available for tab items
                    // Label("Home", systemImage: "house")
                    
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            
            
            SettingsScreen()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Setting")
                }
                .tag(1)
            
            
            
            ProfileScreen()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
                
        }
        .tint(.red)
    }
}




struct HomeScreen: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red, .white], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges: [.top])
            
            VStack {
                Text("Home Screen")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                Button("Go To Profile") {
                    selectedTab = 2
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct SettingsScreen: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.green, .white], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges: [.top])
            Text("Settings Screen")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct ProfileScreen: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.teal, .white], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges: [.top])
            Text("Profile Screen")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
    }
}


#Preview {
    TabViews()
}
