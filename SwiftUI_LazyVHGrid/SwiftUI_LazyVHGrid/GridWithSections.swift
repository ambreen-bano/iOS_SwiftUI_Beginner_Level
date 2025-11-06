//
//  GridWithScrollView.swift
//  SwiftUI_LazyVHGrid
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

struct GridWithSections: View {
    
    //We have columns of flexible sizes
    //All colums are flexible so they will take equal width, except fixed size column
    let flexibleSizeColumns :[GridItem] = [
        GridItem(.flexible(), spacing: 5), //It will occupy as much as width available to occupy
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 30)
        
    ]
    
    
    var body: some View {
        
        ScrollView(.vertical) {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .frame(height: 100)
                .shadow(radius: 10)
                .padding()
                .overlay(Text("Hello").bold())
            
            
            //PinnedViews will stay at TOP while scrolling
            LazyVGrid(columns: flexibleSizeColumns, spacing: 10, pinnedViews: [.sectionHeaders]) {
                
                
                Section { // Section 1 Starts
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .frame(height: 50)
                            .shadow(radius: 10)
                    }
                } header: {
                    //This is Section Header View
                    Text("Section Header 1")
                        .bold()
                        .frame(width: 300 , height: 20)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(20)
                } footer: {
                    //We can give footers view if required
                    Text("Section Footer 1")
                        .bold()
                        .frame(width: 300 , height: 20)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20)
                } // Section 1 Ends
                
                
                
                Section { // Section 2 Start
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .frame(height: 50)
                            .shadow(radius: 10)
                    }
                } header: {
                    //This is Section Header View
                    Text("Section Header 2")
                        .bold()
                        .frame(width: 300 , height: 20)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(20)
                } footer: {
                    //We can give footers view if required
                    Text("Section Footer 2")
                        .bold()
                        .frame(width: 300 , height: 20)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20)
                } // Section 2 Ends
                
            } //Grid Ends
            .padding()
            .background(Color.yellow)
            .cornerRadius(20)
            
            
        } //ScrollView Ending
        .padding()
        .background(Color.gray)
        .cornerRadius(20)
    }
}



#Preview {
    GridWithSections()
}
