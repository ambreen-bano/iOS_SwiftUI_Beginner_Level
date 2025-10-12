//
//  Transitions.swift
//  SwiftUI_Transitions
//
//  Created by Ambreen Bano on 30/09/25.
//

import SwiftUI


//Animation  - use to animate views which is ALREADY ON the screen
//Transition - use to animate views (whole new screen) which are NOT YET ON the screen

struct Transitions: View {
    @State var isAnimate: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                Button("Tap for Transition"){
                    isAnimate.toggle()
                }
                Spacer()
            }
            
            if isAnimate {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2.0)
                    .transition(.slide)
                    .animation(.easeInOut) //This is depricated but working
                    //.animation(.easeInOut, value: isAnimate) //Not Working Need to Check
            }
            
        }
        .ignoresSafeArea(edges: .bottom)
    }
}


struct TransitionsOptions: View {
    @State var isAnimate: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                Button("Tap for Transition"){
                    //Changing isAnimate with animation
                    withAnimation(.easeInOut) {
                        isAnimate.toggle()
                    }
                }
                Spacer()
            }
            
            if isAnimate {
                //This view is not in View hirarchy when main view loaded, so we can do transitions
                //We can NOT do transitions if our this view is dependend on @State variables(like in animations we are dpendend on State variables)
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2.0)
                    //.transition(.slide)
                    //.transition(.opacity) //If we want to just use appaer and disapper our view
                    //.transition(.scale) //Most Common we use for popOvers
                    //  .transition(.move(edge: .bottom)) //Most common, we use for Bottom Sheets
                    .transition(.asymmetric( //If we want to give different transition for Start/insertion and End/removal
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .bottom)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}



#Preview {
    //Transitions()
    TransitionsOptions()
}
