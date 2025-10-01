//
//  FrameContentView.swift
//  SwiftUI_Frame
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

struct FrameContentView: View {
    var body: some View {
        Spacer()
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red) //Modifiers are applied on TOP of Text content
            .frame(width: 200, height: 100) //Frame can be applied on any UI Component
            .background(Color.green)  //Modifiers are applied on TOP of Frame view
        
        
        Spacer()
        Text("Hello World")
            .background(Color.red)
            .frame(height: 100) //ONLY adding height so width will be content width
            .background(Color.blue)
        
        
        Spacer()
        Text("Hello World")
            .background(Color.red)
            .frame(width: 200, alignment: .leading) //Frame contents will align to leading
            .background(Color.gray)
        
        
        Spacer()
        Text("Hello World")
            .background(Color.red)
            .frame(maxWidth: .infinity) //.infinity will take space on screen width/height as much as available or possible
            .background(Color.purple)
        
        
        Spacer()
        Text("Hello World")
            .background(Color.red)
            .frame(minWidth: 20, maxWidth: 80, minHeight: 20, maxHeight: 40) // Ww can give min/max width/height if we have to placed the content within specified area ONLY
            .frame(maxWidth: .infinity) //.infinity will take space on screen width/height as much as available or possible
            .background(Color.green)
        
        
        Spacer()
        Text("Hello World")
            .background(Color.blue)
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .topLeading) //Contents alignment inside frame
            .background(Color.pink)
        
        
        
        Spacer()
        Text("Hello World")
            .background(Color.red)
            .frame(width: 200, height: 50, alignment: .leading) //Frame 1
            .background(Color.green)
            .frame(width: 250, height: 100, alignment: .topTrailing) //Frame 2, we can wrap UI components inside multiple frames
            .background(Color.yellow)

        Spacer()
    }
}

#Preview {
    FrameContentView()
}
