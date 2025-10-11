//
//  NewAnimations.swift
//  SwiftUI_Animations_Updated
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

struct NewAnimations: View {
    
    @State var animation1: Bool =  false
    @State var animation2: Bool =  false
    
    var body: some View {
        
        Button("Animation 1") {
            animation1.toggle()
        }
        
        Button("Animation 2") {
            animation2.toggle()
        }
        
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100, height: 100)
                .frame(maxWidth: .infinity, alignment: animation1 ? .leading : .trailing)
                .frame(maxHeight: .infinity, alignment: animation2 ? .top : .bottom)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 400)
        .background(Color.yellow)
        //without value, animation will apply on ALL/ANY view changes of the UIComponent of this View
        //Problem, all will animate but what if we want to animate specific change ONLY
        //Using value, animation will be ONLY apply on animation1
        .animation(.spring, value: animation1)
    }
}

#Preview {
    NewAnimations()
}
