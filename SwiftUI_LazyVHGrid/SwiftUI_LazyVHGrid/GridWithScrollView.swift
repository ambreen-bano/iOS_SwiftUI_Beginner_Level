//
//  GridWithScrollView.swift
//  SwiftUI_LazyVHGrid
//
//  Created by user2 on 28/09/25.
//

import SwiftUI

struct GridWithScrollView: View {
    
    //We have columns of flexible sizes
    //All colums are flexible so they will take equal width, except fixed size column
    let flexibleSizeColumns :[GridItem] = [
        GridItem(.flexible(), spacing: 5), //It will occupy as much as width available to occupy
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 30)
        
    ]
    
    
    var body: some View {
       
        RoundedRectangle(cornerRadius: 20)
            .fill(.white)
            .frame(height: 100)
            .shadow(radius: 10)
            .padding()
            .overlay(Text("Hello").bold())
        
        
        
        ScrollView(.vertical) {
            // We have columns of flexible sizes
            LazyVGrid(columns: flexibleSizeColumns, spacing: 10) {
                ForEach(0..<200) { index in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .frame(height: 50)
                        .shadow(radius: 10)
                }
            }
            .padding()
            .background(Color.yellow)
        } //ScrollView Ends
        
    }
}

#Preview {
    GridWithScrollView()
}
