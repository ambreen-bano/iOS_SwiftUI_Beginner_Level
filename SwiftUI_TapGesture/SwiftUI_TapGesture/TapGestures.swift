//
//  TapGestures.swift
//  SwiftUI_TapGesture
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

struct TapGestures: View {
    
    @State var changeColor: Bool = false
    @State var changeRadius: Bool = false
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .fill(changeColor ? Color.green : Color.red)
            .frame(width: 200, height: 200)
            .cornerRadius(changeRadius ? 100 : 20)
        
        Text("Tap Gesture")
            .bold()
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
            .onTapGesture {
                //We can add Tap gesture on any View
                //The differnce from Button and tap Gesture is, we can't see interaction animation in tap gesture as we can see in button click
                //Count for tap by default is 1
                changeColor.toggle()
            }
            .onTapGesture(count: 2) {
                //We can give count for tapping as here this code will execute when we tap 2 times
                changeRadius.toggle()
            }
    }
}


#Preview {
    TapGestures()
}
