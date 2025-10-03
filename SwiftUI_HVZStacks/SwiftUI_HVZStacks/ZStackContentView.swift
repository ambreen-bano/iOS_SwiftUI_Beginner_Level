//
//  ZStackContentView.swift
//  SwiftUI_HVZStacks
//
//  Created by user2 on 28/09/25.
//

import SwiftUI

struct ZStackContentView: View {
    var body: some View {
       
        
        // ZStack - Z index -  Back to Front arrangement of Views (addition on top of previews view)
        // ZStack - Alignment, for all stack items to align (ALL possible alignment AVAILABLE)
        // ZStack - NO SPACING OPTION in ZStack
        // Stack Modifiers will apply to all the stack items
        // We can give background/foreground/frame/font etc. on Stacks
        
        
        Spacer()
        //Left align items Back to Front
        ZStack(alignment: .leading, content: { //Works like overlay, adding items on top of the UI Components
            Rectangle() // Back Most Item
                .fill(Color.red)
                .frame(width: 90, height: 70)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 80, height: 50)
            
            Rectangle() // Front Most Item
                .fill(Color.yellow)
                .frame(width: 50, height: 30)
        })
       
        
        
        
        Spacer()
        //Left align items Back to Front
        ZStack(alignment: .center, content: {
            Rectangle() // Back Most Item
                .fill(Color.red)
                .frame(width: 90, height: 70)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 80, height: 50)
            
            Rectangle() // Front Most Item
                .fill(Color.yellow)
                .frame(width: 50, height: 30)
        })
        .frame(width: 120, height: 120, alignment: .bottomTrailing) //Stack is align to bottomTrailing in this frame
        .background(Color.blue)
        
        
        
        
        
        
        Spacer()
    }
}

#Preview {
    ZStackContentView()
}
