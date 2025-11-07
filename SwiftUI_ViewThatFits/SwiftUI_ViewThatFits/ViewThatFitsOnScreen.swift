//
//  ViewThatFitsOnScreen.swift
//  SwiftUI_ViewThatFits
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI


struct ViewFitsOnScreenOldWay: View {
    var body: some View {
        
        Text("OLD Way to Fit text in View using minimumScaleFactor")
        
        VStack {
            //Old way - we use minimumScaleFactor and line limit to fit contents in the spcified View Frame
            Text("Build 17+ Apps – The Complete iOS App Development Course with SwiftUI, SwiftData, Xcode, Apple Intelligence, ChatGPT, AI")
                .padding()
                .lineLimit(2)
                .minimumScaleFactor(0.7)
        }
        .bold()
        .foregroundStyle(.red)
        .frame(width: 300, height: 300)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}




struct ViewThatFitsOnScreen: View {
    var body: some View {
        
        Text("New Way to Fit text in View using ViewThatFits")
        
        VStack {
            //New Way - ViewThatFits
            //It will check all the View from the starting and which one is nicely fit that will display on screen
            //Example to use - We can use it at places where we have title and we don't want my title to shrink or go in multiline
            ViewThatFits(in: .horizontal) {
                Text("Build 17+ Apps – The Complete iOS App Development Course with SwiftUI, SwiftData, Xcode, Apple Intelligence, ChatGPT, AI") //This is going in multiline
                Text("You can rotate the simulator device !") //This is fit in one line
                Text("Hello, World!") //This is fit in one line
            }
        }
        .bold()
        .foregroundStyle(.red)
        .frame(width: 300, height: 300)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}



#Preview {
    ViewFitsOnScreenOldWay()
    //ViewThatFitsOnScreen()
}
