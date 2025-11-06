//
//  LazyVGrid.swift
//  SwiftUI_LazyVHGrid
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

struct LazyVGridContentView: View {
    
    //We have columns of different fixed sizes
    let fixedSizeColumns :[GridItem] = [
        GridItem(.fixed(40), spacing: 4), //This is Columns spacing
        GridItem(.fixed(70), spacing: 40), //This is Columns spacing
        GridItem(.fixed(100))
    ]
    
    
    //We have columns of flexible sizes
    //All colums are flexible so they will take equal width, except fixed size column
    let flexibleSizeColumns :[GridItem] = [
        GridItem(.flexible()), //It will occupy as much as width available to occupy
        GridItem(.flexible()),
        GridItem(.fixed(50))
        
    ]
    
    
    //We have columns of adaptive sizes
    //We have 3 columns, So, entire available screen width is divided by 3
    //In each column, if it is adaptive then using minimum size it will display as much as cells can be added
    let adaptiveSizeColumns :[GridItem] = [
        GridItem(.adaptive(minimum: 30, maximum: 100)), //In first part of screen width it can adapt max 4 cells as shown on screen
        GridItem(.flexible()), //This is flexible so it will display one cell of available width
        GridItem(.fixed(40)) //This is fixed so it will display one cell of fixed width
        
    ]
    
    
    let adaptiveSizeColumns2 :[GridItem] = [
        GridItem(.adaptive(minimum: 20, maximum: 100)), //In first part of screen width it can adapt max 4 cells as shown on screen
        GridItem(.adaptive(minimum: 50, maximum: 60)), //In first part of screen width it can adapt max 4 cells as shown on screen
        GridItem(.fixed(100)) //This is fixed so it will display one cell of fixed width
        
    ]
    
    
    
    
    
    var body: some View {
        
        //1. We have columns of different fixed sizes
        LazyVGrid(columns: fixedSizeColumns, spacing: 20) { //This is rows spacing
            ForEach(0..<9) { index in
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(height: 50)
                    .shadow(radius: 10)
            }
        }
        .frame(height: 250)
        .background(Color.yellow)
        
    
        
        
        
        //2. We have columns of flexible sizes
        LazyVGrid(columns: flexibleSizeColumns) {
            ForEach(0..<9) { index in
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(height: 50) //Width will be calculated from flexibleSizeColumns
                    .shadow(radius: 10)
            }
        }
        .frame(height: 200)
        .background(Color.yellow)
        
        
        
        
        
        
        //3. We have columns of adaptive sizes
        LazyVGrid(columns: adaptiveSizeColumns) {
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(height: 50)
                    .shadow(radius: 10)
            }
        }
        .frame(height: 150)
        .background(Color.yellow)
        
        
        
        
        
        
        //4. We have columns of adaptive sizes
        LazyVGrid(columns: adaptiveSizeColumns2) {
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(height: 50)
                    .shadow(radius: 10)
            }
        }
        .frame(height: 150)
        .background(Color.yellow)
        
        
    }
}


#Preview {
    LazyVGridContentView()
}
