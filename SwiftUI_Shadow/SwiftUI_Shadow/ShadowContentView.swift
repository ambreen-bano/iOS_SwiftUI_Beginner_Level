//
//  ContentView.swift
//  SwiftUI_Shadow
//
//  Created by Ambreen Bano on 27/09/25.
//

import SwiftUI

struct ShadowContentView: View {
    var body: some View {
        
        //By Default Shadow is BLACK in color
        //X Y is 0 (Shadow in All Direction)
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.red)
            .frame(width: 200, height: 50)
            .shadow(radius: 50)
        
        Spacer()
        //X Y is 0 (Shadow in All Direction)
        RoundedRectangle(cornerRadius: 10)
            .fill(.red)
            .frame(width: 200, height: 50)
            .shadow(color: .green , radius: 10)
        
        
        
        
        
        Spacer()
        //X is +ve (Horizontal Shadow in Right Direction)
        RoundedRectangle(cornerRadius: 10)
            .fill(.red)
            .frame(width: 200, height: 50)
            .shadow(color: .blue , radius: 10, x: 20, y: 0)
        
        Spacer()
        //X is -ve (Horizontal Shadow in Left Direction)
        RoundedRectangle(cornerRadius: 10)
            .fill(.red)
            .frame(width: 200, height: 50)
            .shadow(color: .yellow, radius: 10, x: -20, y: 0)
        
        
        
        
        
        
        Spacer()
        //X is 0 and Y is +ve (Vertical Shadow in Downward Direction)
        RoundedRectangle(cornerRadius: 10)
            .fill(.red)
            .frame(width: 200, height: 50)
            .shadow(color: .blue, radius: 10, y: 20)
        
        Spacer()
        //X is 0 and Y is -ve (Vertical Shadow in Upward Direction)
        RoundedRectangle(cornerRadius: 10)
            .fill(.red)
            .frame(width: 200, height: 50)
            .shadow(color: .green, radius: 10, x: 0, y: -20)
        
        
        
        
        
        Spacer()
        //X and Y Both are +ve (Shadow in Bottom Right Corner Direction)
        RoundedRectangle(cornerRadius: 10)
            .fill(.red)
            .frame(width: 200, height: 50)
            .shadow(color: .green, radius: 10, x: 10, y: 10)
        
        
        Spacer()
        //X and Y Both are -ve (Shadow in Top Left Corner Direction)
        RoundedRectangle(cornerRadius: 10)
            .fill(.red)
            .frame(width: 200, height: 50)
            .shadow(color: .green, radius: 10, x: -10, y: -10)
        
        
        
        
        
        
        
        Spacer()
        //X and Y Both are -ve (Shadow in Top Left Corner Direction)
        //Radius is 0, The shadow is a sharp copy of the shape.
        //Radius - How much the shadow is blurred, 0 means no Blurr
        RoundedRectangle(cornerRadius: 10)
            .fill(.red)
            .frame(width: 200, height: 50)
            .shadow(color: .green, radius: 0, x: -10, y: -10)
        
        Spacer()
        //X and Y Both are -ve (Shadow in Top Left Corner Direction)
        //Radius is 0, The shadow is a sharp copy of the shape.
        //Radius - How much the shadow is blurred, 0 means no Blurr
        //Changing Shadow Color Opacity
        RoundedRectangle(cornerRadius: 10)
            .fill(.red)
            .frame(width: 200, height: 50)
            .shadow(color: .green.opacity(0.4), radius: 0, x: -10, y: -10)
    }
}

#Preview {
    ShadowContentView()
}
