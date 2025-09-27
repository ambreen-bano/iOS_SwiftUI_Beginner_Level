//
//  ContentView.swift
//  SwiftUI_Shapes
//
//  Created by user2 on 27/09/25.
//

import SwiftUI

//All the modifiers which we have applied on circle, can be applied on other shapes too.
struct ShapesContentView: View {
    var body: some View {
        
        Circle()
        
        Circle()
            .fill(Color.green)
        
        Circle()
            .foregroundColor(.red)
        
        Circle()
            .stroke()
        
        Circle()
            .stroke(Color.red)
        
        Circle()
            .stroke(Color.red, lineWidth: 10)
        
        //lineCap is stroke shape, dash is spacing between stroke line
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .square, dash: [10]))
        
        //trim use to show portion of the shapes
        //0 to 1 is full shape
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
