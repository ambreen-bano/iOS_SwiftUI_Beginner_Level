//
//  ContentView.swift
//  SwiftUI_Shapes
//
//  Created by Ambreen Bano on 27/09/25.
//

import SwiftUI

//All the modifiers which we have applied on circle, can be applied on other shapes too.
struct ShapesContentView: View {
    var body: some View {
        
        Circle() //Default is Fill with Black
        
        Circle()
            .fill(Color.green) //Fill with Color
        
        Circle()
            .foregroundColor(.red) //Fill with Color
        
        Circle()
            .stroke() //ONLY outline of the shape
        
        Circle()
            .stroke(Color.red) //Outline of the shape with specified color
        
        Circle()
            .stroke(Color.red, lineWidth: 10) //Outline of the shape with specified color and width
        
        
        //We can customize shape drawing as - lineCap is stroke shape, dash is spacing between stroke line
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .square, dash: [10]))
        
        //trim use to show portion of the shapes
        //0 to 1 is full shape
        //0.5 is half
        Circle()
            .trim(from: 0.5, to: 1)
        
        
        
        
        Ellipse()
            .frame(width: 300)
        Ellipse()
            .frame(width: 300, height: 100)
        
        
        
        
        Capsule()
            .frame(width: 300)
        Capsule(style: .circular)
            .frame(width: 300)
        Capsule(style: .continuous)
            .frame(width: 300)
        
        
        
        
        Rectangle()
            .frame(width: 300)
        Rectangle()
            .trim(from: 0.5, to: 1.0)
            .frame(width: 300)
        
        
        
        
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.green)
            .frame(width: 300)
        RoundedRectangle(cornerRadius: 50, style: .circular)
            .foregroundColor(.blue)
            .frame(width: 300)
    }
}


#Preview {
    ShapesContentView()
}
