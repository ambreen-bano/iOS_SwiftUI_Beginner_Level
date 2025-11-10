//
//  Badges.swift
//  SwiftUI_Badges
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

//Badges works with List and TabView

//Badges with TabView
struct BadgesWithTabView: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "person")
                }
                .badge(2)
            Color.green
                .tabItem {
                    Image(systemName: "heart")
                }
                .badge("Likes")
            Color.yellow
                .tabItem {
                    Image(systemName: "gear")
                }
                .badge(10)
        }
        .tint(.teal)
    }
}


struct BadgesWithList: View {
    var body: some View {
        //Badges works with List and TabView
        
        List {
           Text("List Item 1")
                .badge(2)
            Text("List Item 2")
                .badge("Likes")
            Text("List Item 3")
                .badge(10)
        }
    }
}


#Preview {
    //BadgesWithTabView()
    BadgesWithList()
}
