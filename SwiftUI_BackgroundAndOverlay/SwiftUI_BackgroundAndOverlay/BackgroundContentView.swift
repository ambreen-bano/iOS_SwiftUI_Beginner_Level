//
//  BackgroundContentView.swift
//  SwiftUI_BackgroundAndOverlay
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

struct BackgroundContentView: View {
    var body: some View {
        
        /*
         Background - On BACK/BEHIND of UI Components
         Inside Background(View) we can -
         1. Color
         2. Gradient
         3. Shapes
         4. Custom Views/UI Components like Text etc.
         we can give alignment for background contents like we do in frames
         Background contents will add in the background/Behind the UI Components
         */
        
        
        
        Spacer()
        // 1. We can Give Color
        Text("Hello, World!")
            .frame(width: 200, height: 30)
            .background(Color.red)
        
        
        
        
        
        Spacer()
        // 2. We can Give Gradient
        Text("Hello World")
            .frame(width: 200, height: 30)
            .background(
                LinearGradient(colors: [Color.red, Color.green], startPoint: .leading, endPoint: .trailing))
        
        
        
        
        
        Spacer()
        // 3. We can Give Shapes
        Text("Hello World")
            .frame(width: 200, height: 95)
            .background(
                Circle() //Circle will be equal to frame size
                .fill(Color.yellow))
        
        Spacer()
        Text("Hello World")
            .background(
                Circle() //Circle will be equal to Content frame size
                .fill(Color.gray))
        
        Spacer()
        Text("Hello World")
            .background(
                Circle()
                .fill(Color.yellow)
                .frame(width: 200, height: 95)) //Circle will be equal to frame size
        
        
        
        
        
        Spacer()
        // 4. We can Give Custom View
        Text("Hello World")
            .frame(width: 300, height: 60)
            .background(myCustomVew(), alignment: .topLeading) //We can set alignment
            .background(Color.green)
        
        Spacer()
        // 4. We can Give any UI Components
        Text("Hello World")
            .frame(width: 300, height: 60)
            .background(Text("Background!"), alignment: .topLeading) //We can set alignment
            .background(Color.green)
        
        
        
    
        
        
        Spacer()
        // We can set multiple backgrounds, one after the another will apply in back
        // We can set alignments also on background content
        Text("Hello World")
            .background(Color.red)
            .frame(width: 100, height: 40, alignment: .leading)
            .background(Color.green)
            .frame(width: 200, height: 50, alignment: .trailing)
            .background(Color.yellow)
            .frame(width: 300, height: 60, alignment: .center)
            .background(Color.blue)
        
        
        
        
        
        Spacer()
        Text("Hello World")
            .background(
                Circle()
                .fill(LinearGradient(colors: [Color.green, Color.red], startPoint: .leading, endPoint: .trailing))
                .frame(width: 100, height: 90)//Draw Circle of specified frame size
            )
            .background(
                Circle()
                .fill(LinearGradient(colors: [Color.red, Color.green], startPoint: .leading, endPoint: .trailing))
                .frame(width: 120, height: 100)//Draw Circle of specified frame size
            )
        
    
        Spacer()
    }
}


struct myCustomVew: View {
    var body: some View {
        Text("This is my View")
            .frame(width: 100, height: 50)
            .foregroundColor(Color.red)
            .background(Color.yellow)
    }
}


#Preview {
    BackgroundContentView()
}
