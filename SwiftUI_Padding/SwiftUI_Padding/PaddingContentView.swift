//
//  PaddingContentView.swift
//  SwiftUI_Padding
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

struct PaddingContentView: View {
    var body: some View {
        
        //Padding is to add margings/spacing around contents
        //Padding is add extra space around edges of the content. make it dynamic rather than using hardcoded frame size
        //Padding can be apply on any UI Components like frames, eg. text/stacks
        
        
        Spacer()
        //We can apply padding in ALL edges
        Text("Hello, World!")
            .background(Color.yellow)
            .padding() //default 10px padding is applied to all edges
            .background(Color.green)
        
        Text("Hello, World!")
            .background(Color.yellow)
            .padding(.all, 5)
            .background(Color.green)
           
        
        
        
         
        Spacer()
        //We can apply padding ONLY in top/bottom or left/right
        Text("Hello, World!")
            .background(Color.yellow)
            .padding(.horizontal, 20)
            .background(Color.green)
        
        Text("Hello, World!")
            .background(Color.yellow)
            .padding(.vertical, 20)
            .background(Color.green)
        
        
        
        
        
        Spacer()
        //We can apply padding ONLY at ONE EDGE leading/trailing/top/bottom
        Text("Hello, World!")
            .background(Color.yellow)
            .padding(.leading, 20)
            .background(Color.green)
        
        Text("Hello, World!")
            .background(Color.yellow)
            .padding(.bottom, 20)
            .background(Color.green)
        
        
        
        
        
        
        Spacer()
        //We can apply nested padding, we can give more padding at any edge
        Text("Hello, World!")
            .background(Color.yellow)
            .padding(.all, 20) //1. All edges will have 20px padding
            .padding(.leading, 50) //2. Adding Extra 50px padding only at leading
            .background(Color.green)
        
        
        
        
        
        
        Spacer()
        //Padding with infinite and fixed frames
        Text("Hello, World!")
            .background(Color.yellow)
            .frame(maxWidth: .infinity) //By default text will display in center
            .background(Color.green)
        
        Text("Hello, World!")
            .background(Color.yellow)
            .frame(maxWidth: .infinity, alignment: .leading) //text will align in left of frame
            .background(Color.green)
        
        Text("Hello, World!")
            .background(Color.yellow)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 30) //We can apply only leading padding with infinite frame
            .background(Color.green)
        
        Text("Hello, World!")
            .background(Color.yellow)
            .frame(width: 300, alignment: .leading) //text will align in left of frame
            .padding(.leading, 30) //We can apply only leading padding with frame
            .background(Color.green)
        
        
        
        
        
        
        Spacer()
        //Example of padding with multiple text and VStack
        VStack(alignment: .leading) {
            Text("Hello World!")
                .font(.title)
                .bold()
                .padding(.bottom, 5)
            Text("In this lesson, you’ll be introduced to the new era of AI—its role as a human-empowering sidekick, its historical evolution from simple chatbots to today’s large models.")
        }
       //.background(Color.red) //Color On VStack contents
        .padding(.all, 30) //Padding On VStack contents
        .background(
            Color.white //Backgrouns is in white color
                .cornerRadius(20) //Rounded corner for background
                .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        .padding(.all, 10) //Padding On Background
        //.background(Color.yellow)
       
        
        
        Spacer()
    }
}

#Preview {
    PaddingContentView()
}
