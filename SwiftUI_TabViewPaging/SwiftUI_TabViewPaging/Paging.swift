//
//  TabViews.swift
//  SwiftUI_TabView
//
//  Created by Ambreen Bano on 03/10/25.
//

import SwiftUI



struct PagingUsingTabView: View {
    @State var selectedTab: Int = 1
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            HomeScreen(selectedTab: $selectedTab)
                .tag(0)
        
            SettingsScreen()
                .tag(1)
            
            ProfileScreen()
                .tag(2)
                
        }
        .tint(.red) //NOT working in paging
        .tabViewStyle(.page)
        .frame(height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding()
    }
}



struct PagingUsingTabViewWithPageIndicatorImages: View {
    @State var selectedTab: Int = 1
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            HomeScreen(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            
            
            SettingsScreen()
                .tabItem {
                    Image(systemName: "gear")
                }
                .tag(1)
            
            
            
            ProfileScreen()
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(2)
                
        }
        .tint(.red) //NOT working in paging
        .tabViewStyle(.page)
        .frame(height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding()
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
    PagingUsingTabView()
    //PagingUsingTabViewWithPageIndicatorImages()
   
}
