//
//  ExtractSubViewsContentView.swift
//  SwiftUI_ExtractSubViews
//
//  Created by Ambreen Bano on 29/09/25.
//

import SwiftUI

//Main Body of the view is getting longer and redability becomes hard
struct WithoutExtractSubViewsContentView: View {
    var body: some View {
        
        ZStack {
            Color.purple.ignoresSafeArea()
            
            HStack {
                
                VStack {
                    Text("Apple")
                    Text("100")
                }
                .frame(width: 100, height: 100)
                .background(.red)
                .cornerRadius(10)
                
                
                VStack {
                    Text("Orange")
                    Text("200")
                }
                .frame(width: 100, height: 100)
                .background(.orange)
                .cornerRadius(10)
                
                
                VStack {
                    Text("Banana")
                    Text("300")
                }
                .frame(width: 100, height: 100)
                .background(.yellow)
                .cornerRadius(10)
                
            }
        }
    }
}



//Extracted View - Static View, don't have initializer
//Extracted SubView - not a static view, we can reuse this view with different values
//Redability increase
//Modularity increase
//Reusability with initializer

struct ExtractSubViewsContentView: View {
    
    var body: some View {
        ZStack {
            backgroundLayer
            foregroundLayer
        }
    }
    
    
    //Extracted View
    //Static View, don't have initializer
    var backgroundLayer: some View {
        Color.purple.ignoresSafeArea()
    }
    
    //Extracted View
    //Static View, don't need to have initializer, so we can extract it as view - computed property
    var foregroundLayer: some View {
        HStack {
            ItemView(itemName: "Apple", itemCount: 100, itemColor: .red)
            ItemView(itemName: "Orange", itemCount: 200, itemColor: .orange)
            ItemView(itemName: "Banana", itemCount: 300, itemColor: .yellow)
        }
    }
}


//Extracted SubView - not a static view, we can reuse this view with different values
struct ItemView: View {
    
    let itemName: String
    let itemCount: Int
    let itemColor: Color
    
    init(itemName: String, itemCount: Int, itemColor: Color) {
        self.itemName = itemName
        self.itemCount = itemCount
        self.itemColor = itemColor
    }
    
    var body: some View {
        VStack {
            Text(itemName)
            Text("\(itemColor)")
        }
        .frame(width: 100, height: 100)
        .background(itemColor)
        .cornerRadius(10)
    }
}




#Preview {
   // WithoutExtractSubViewsContentView()
    ExtractSubViewsContentView()
}
