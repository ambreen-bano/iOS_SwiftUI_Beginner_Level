//
//  HStackContentView.swift
//  SwiftUI_HVZStacks
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

struct HStackContentView: View {
    var body: some View {
        
        // HStack - Vertical Top to Botton arrangement of Views
        // HStack - Alignment, for all stack items to align (Top/Bottom/center, NO Leading or Trailing)
        // HStack - Spacing , space between all stack items
        // Stack Modifiers will apply to all the stack items
        // We can give background/foreground/frame/font etc. on Stacks
        
        
        
        
        Spacer()
        //Top align with 0px spacing
        HStack(alignment: .top, spacing: 0, content: {
            Rectangle() // LeftMost/First Item
                .fill(Color.red)
                .frame(width: 30, height: 30)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 60, height: 40)
            
            Rectangle() // RightMost/Last Item
                .fill(Color.yellow)
                .frame(width: 80, height: 60)
        })
        .background(Color.blue)
        
        
        
        
        
        
        Spacer()
        //Center align with 5px spacing
        HStack(alignment: .center, spacing: 5, content: {
            Rectangle() // LeftMost/First Item
                .fill(Color.red)
                .frame(width: 30, height: 30)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 60, height: 40)
            
            Rectangle() // RightMost/Last Item
                .fill(Color.yellow)
                .frame(width: 80, height: 60)
        })
        .background(Color.blue)
        
        
        
        
        
        Spacer()
        //Bottom align with 20px spacing
        HStack(alignment: .bottom, spacing: 20, content: { //Stack items are align to bottom in stack frame
            Rectangle() // LeftMost/First Item
                .fill(Color.red)
                .frame(width: 30, height: 30)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 60, height: 40)
            
            Rectangle() // RightMost/Last Item
                .fill(Color.yellow)
                .frame(width: 80, height: 60)
        })
        .background(Color.blue)
        .frame(width: 300, height: 80, alignment: .bottomTrailing) //Stack is align to bottomTrailing in this frame
        .background(Color.purple)
        
        Spacer()
    }
}

#Preview {
    HStackContentView()
}
