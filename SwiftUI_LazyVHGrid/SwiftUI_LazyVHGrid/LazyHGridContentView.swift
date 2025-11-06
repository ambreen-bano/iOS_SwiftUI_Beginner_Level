//
//  GridWithScrollView.swift
//  SwiftUI_LazyVHGrid
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

struct LazyHGridContentView: View {
    
    //We have rows of flexible sizes
    //All colums are flexible so they will take equal height, except fixed size row
    let flexibleSizeRows :[GridItem] = [
        GridItem(.flexible(), spacing: 5), //It will occupy as much as height available to occupy
        GridItem(.flexible(), spacing: 20),
        GridItem(.fixed(20), spacing: 10) //3rd row height is 20px
        
    ]
    
    
    var body: some View {
    
        ScrollView(.horizontal) {
            
            LazyHGrid(rows: flexibleSizeRows, spacing: 10) {
                ForEach(0..<500) { index in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .frame( width: 100) //Height will be calculated from flexibleSizeRows
                        .shadow(radius: 10)
                }
            } // LazyHGrid End
            .padding()
            .background(Color.yellow)
            
        } //ScrollView Ends
        .frame(height: 200)
        
    }
}

#Preview {
    LazyHGridContentView()
}

