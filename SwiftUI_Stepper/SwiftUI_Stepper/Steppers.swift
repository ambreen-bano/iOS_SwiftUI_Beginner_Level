//
//  Steppers.swift
//  SwiftUI_Stepper
//
//  Created by Ambreen Bano on 03/10/25.
//

import SwiftUI

struct Steppers: View {
    
    @State var stepperValue: Int = 0
    
    @State var selectedWidth: CGFloat = 100
    @State var fillColor: Color = .red
    
    var body: some View {
        
        // Default Stepper when we want to increment decrement value by 1
        //In stepper we can bind it with variable with stepper type, means value which is allow to inrement/decrement like Int, float etc..
        Stepper("No. of Items : \(stepperValue)", value: $stepperValue)
            .padding()
        
        
        
        //Stepper with onIncrement and onDecrement, when we want to increment decrement value by custom value
        Stepper("Change Width") {
            //This will execute when we click +
            selectedWidth = selectedWidth + 10
            fillColor = .green
        } onDecrement: {
            //This will execute when we click -
            selectedWidth = selectedWidth - 10
            fillColor = .red
        }
        .padding()
        
        
        RoundedRectangle(cornerRadius: 20)
            .fill(fillColor)
            .frame(width: selectedWidth, height: 100)
        
    }
}

#Preview {
    Steppers()
}
