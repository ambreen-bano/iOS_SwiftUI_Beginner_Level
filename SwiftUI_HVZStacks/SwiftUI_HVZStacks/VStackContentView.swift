//
//  VStackContentView.swift
//  SwiftUI_HVZStacks
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

struct VStackContentView: View {
    var body: some View {
     
        // VStack - Vertical Top to Botton arrangement of Views
        // VStack - Alignment, for all stack items to align (leading/trailing/center, NO TOP or BOTTOM)
        // VStack - Spacing , space between all stack items
        // Stack Modifiers will apply to all the stack items
        // We can give background/foreground/frame/font etc. on Stacks
        
        
        
        
        Spacer()
        //Left align with 0px spacing
        VStack(alignment: .leading, spacing: 0, content: {
            Rectangle() // Top/First Item
                .fill(Color.red)
                .frame(width: 30, height: 30)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 60, height: 40)
            
            Rectangle() // Bottom/Last Item
                .fill(Color.yellow)
                .frame(width: 80, height: 50)
        })
        .background(Color.blue)
        
        
        
        
        
        
        
        Spacer()
        //Center align with 5px spacing
        VStack(alignment: .center, spacing: 5, content: {
            Rectangle() // Top/First Item
                .fill(Color.red)
                .frame(width: 30, height: 30)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 60, height: 40)
            
            Rectangle() // Bottom/Last Item
                .fill(Color.yellow)
                .frame(width: 80, height: 50)
        })
        .background(Color.blue)
        
        
        
        
        
        Spacer()
        //Right align with 20px spacing
        VStack(alignment: .trailing, spacing: 20, content: {
            Rectangle() // Top/First Item
                .fill(Color.red)
                .frame(width: 30, height: 30)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 60, height: 40)
            
            Rectangle() // Bottom/Last Item
                .fill(Color.yellow)
                .frame(width: 80, height: 50) //Our Stack item has max width 80 so stack will be 80px
        })
        .background(Color.blue)
        
        
        
        
        Spacer()
        //Right align with 20px spacing
        VStack(alignment: .leading, spacing: 10, content: {
            Rectangle() // Top/First Item
                .fill(Color.red)
                .frame(width: 30, height: 30)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 60, height: 40)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 80, height: 50)
            
            Text("Hello Foreground Color") // Bottom/Last Item
                .frame(width: 200) //Our Stack item has max width 200 so stack will be 200px
                .background(Color.white)
        }) //Stack default frame is decided according to the max width/height of stack item
        //Stack Modifiers will apply to all the stack items
        .font(.title) //This will apply on stack items size
        .foregroundColor(Color.purple) //This will apply on stack items color
        .background(Color.blue) //This will apply on default stack frame background
        .frame(width: 250, height: 250, alignment: .trailing) //Set frame on stack
        .background(Color.orange)//This will apply on above specified frame
       
        
        
        
        Spacer()
    }
}

#Preview {
    VStackContentView()
}
