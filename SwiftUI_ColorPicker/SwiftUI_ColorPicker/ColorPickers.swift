//
//  ColorPickers.swift
//  SwiftUI_ColorPicker
//
//  Created by Ambreen Bano on 03/10/25.
//

import SwiftUI

struct ColorPickers: View {
    
    @State var bgColor: Color = .yellow
    
    var body: some View {
        
        ZStack {
            bgColor.ignoresSafeArea()
            VStack {
                //It will open Color Pallet with Opacity options
               ColorPicker("Select BG Color", selection: $bgColor, supportsOpacity: true)
                    .padding()
                    .font(.headline)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(20)
                    .padding()
            }
        }
    }
}

#Preview {
    ColorPickers()
}
