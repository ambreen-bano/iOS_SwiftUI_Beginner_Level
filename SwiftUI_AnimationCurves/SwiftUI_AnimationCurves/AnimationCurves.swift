//
//  AnimationCurves.swift
//  SwiftUI_AnimationCurves
//
//  Created by Ambreen Bano on 30/09/25.
//

import SwiftUI

struct AnimationCurves: View {
    
    @State var isAnimate: Bool = false
    
    var body: some View {
        
        VStack {
            
            Button("Tap to Animate"){
                isAnimate.toggle()
            }
            
            //Animation Curves - Animation timing
            //All will start and end at same time except default
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimate ? 350 : 50, height: 100)
                .animation(Animation.default, value: isAnimate)
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimate ? 350 : 50, height: 100)
                .animation(Animation.linear, value: isAnimate)
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimate ? 350 : 50, height: 100)
                .animation(Animation.easeIn, value: isAnimate)
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimate ? 350 : 50, height: 100)
                .animation(Animation.easeInOut, value: isAnimate)
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimate ? 350 : 50, height: 100)
                .animation(Animation.easeOut, value: isAnimate)
        }
        .frame(width: 350, height: 700)
        .background(.yellow)
    }
}




struct AnimationCurvesWithDuration: View {
    
    @State var isAnimate: Bool = false
    let timing: Double = 10.0
    var body: some View {
        
        
        VStack {
            Button("Tap to Animate"){
                isAnimate.toggle()
            }
            
            
            //Animation Curves - Animation timing
            //All will start and end at same time
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimate ? 350 : 50, height: 100)
            //start to end same speed
                .animation(Animation.linear(duration: timing), value: isAnimate)
            
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimate ? 350 : 50, height: 100)
            //start slowly
                .animation(Animation.easeIn(duration: timing), value: isAnimate)
            
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimate ? 350 : 50, height: 100)
            //Start and End slowly
                .animation(Animation.easeInOut(duration: timing), value: isAnimate)
            
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimate ? 350 : 50, height: 100)
            //End slowly
                .animation(Animation.easeOut(duration: timing), value: isAnimate)
        }
        .frame(width: 350, height: 700)
        .background(.yellow)
    }
    
}


struct AnimationCurvesWithSpring: View {
    
    @State var isAnimate: Bool = false
    let timing: Double = 2.0
    var body: some View {
        
        
        VStack {
            Button("Tap to Animate"){
                isAnimate.toggle()
            }
            
            //Spring is most common animation
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimate ? 350 : 50, height: 100)
                .animation(Animation.spring, value: isAnimate)
            
            
            
            //Spring with duration/response and dampingFraction to bounce back at end
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(width: isAnimate ? 350 : 50, height: 100)
                .animation(Animation.spring(
                    response: timing, //Duration
                    dampingFraction: 0.6, //Bounce Back
                    blendDuration: 1.0),
                           value: isAnimate)
        }
        .frame(width: 350, height: 700)
        .background(.yellow)
    }
    
}

#Preview {
    //AnimationCurves()
    AnimationCurvesWithDuration()
    //AnimationCurvesWithSpring()
}
