//
//  StackExamples.swift
//  SwiftUI_HVZStacks
//
//  Created by user2 on 28/09/25.
//

import SwiftUI

struct StackExamples: View {
    var body: some View {
        
        
        //We can create same view using ZStack/ Background/ Overlay
        //Whereever possible use backgrond rather than ZStack
        
        
    
        Spacer()
        //1. Timer Using ZStack
        ZStack(alignment: .center) { //Add Circle and Text in Back to Front arrangement
            Circle()
                .frame(width: 100, height: 100)
            Text("1")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
        
        
        
        
        Spacer()
        //2. Timer Using Background()
        Text("1")
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
            .background( //Add Circle on Back of Text
                Circle()
                    .frame(width: 100, height: 100)
            )
        
        
        
        
        
        Spacer()
        //3. Timer Using Overlay()
        Circle()
            .frame(width: 100, height: 100)
            .overlay ( //Add Text on Top of Circle
                Text("1")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
            )
        
        
        
        
        Spacer()
    }
}

#Preview {
    StackExamples()
}
