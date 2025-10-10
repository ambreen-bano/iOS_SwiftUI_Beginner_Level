//
//  AnimationContentView.swift
//  SwiftUI_Animations
//
//  Created by Ambreen Bano on 29/09/25.
//

import SwiftUI

struct AnimationContentView: View {
    
    @State var isAnimate: Bool = false
    
    var body: some View {
       
        Button("Tap to Animate"){
            isAnimate.toggle()
        }
        .padding(.all)
        
        
        RoundedRectangle(cornerRadius: isAnimate ? 50 : 10)
            .fill(isAnimate ? .red : .green)
            .frame(width: isAnimate ? 100 : 200, height: isAnimate ? 100 : 200)
            .offset(x: 0, y: isAnimate ? 300 : 0) //Change x,y position of the view from current position, this y is addition of 300px in current y position
    }
}


struct AnimationContentViewOption1: View {
    
    @State var isAnimate: Bool = false
    
    var body: some View {
        VStack(alignment: .center) {
            Button("Tap to Animate"){
                //OPTION 1 for Animation - withAnimation()
                //withAnimation(Animation.default.delay(2.0)) { //This code block will run after 2 sec delay
                //withAnimation(Animation.default.repeatForever()) { //repeatForever causes animation will not stop
                //withAnimation(Animation.default.repeatForever(autoreverses: true)) { //repeatForever causes animation will not stop
                //withAnimation(Animation.default.repeatCount(5)) { //Animation will repaeat 5 times
                withAnimation(Animation.default.repeatCount(5, autoreverses: true)) { //Animation will repaeat 5 times as reset to original position for next round of animation
                    
                    //what ever view is dependent on isAnimate state, those ALL Views will change with animation
                    isAnimate.toggle()
                }
            }
            .padding(.all)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimate ? 50 : 25)
                .fill(isAnimate ? .red : .green)
                .frame(width: isAnimate ? 100 : 300, height: isAnimate ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimate ? 360 : 0))
                .offset(y: isAnimate ? 300 : 0) //Change x,y position of the view from current position, this y is addition of 300px in current y position
            
            Spacer()
        }
        .frame(width: 400, height: 800, alignment: .center)
    }
}


struct AnimationContentViewOption2: View {
    
    @State var isAnimate: Bool = false
    
    var body: some View {
        VStack(alignment: .center) {
            Button("Tap to Animate"){
                    isAnimate.toggle()
               
            }
            .padding(.all)
            
            Spacer()
            
            //OPTION 2 for Animation - .animation()
            //In this case we have animation on RoundedRectangle so ONLY this view will animate
            //In above case all the views depended on state of isAnimate will animate.
            //So, use WithAnimation or .animation according to the requirement
            RoundedRectangle(cornerRadius: isAnimate ? 50 : 25)
                .fill(isAnimate ? .red : .green)
                .frame(width: isAnimate ? 100 : 300, height: isAnimate ? 100 : 300, alignment: .center)
                .rotationEffect(Angle(degrees: isAnimate ? 360 : 0), anchor: .center)
                .offset(y: isAnimate ? 300 : 0) //Change x,y position of the view from current position, this y is addition of 300px in current y position
                .animation(Animation.default.repeatForever(autoreverses: true), value: isAnimate)
            
            Spacer()
        }
        .frame(width: 400, height: 800, alignment: .center)
    }
}




#Preview {
    //AnimationContentView()
    AnimationContentViewOption1()
    //AnimationContentViewOption2()
}
