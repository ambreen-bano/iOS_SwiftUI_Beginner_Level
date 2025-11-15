//
//  BackgroundMaterials.swift
//  SwiftUI_BackgroundMaterials
//
//  Created by Ambreen Bano on 02/10/25.
//

import SwiftUI

struct BackgroundMaterials: View {
    var body: some View {
        
        
        ZStack(alignment: .bottom) {
            //We can have Gradient or Image in the background
            //RadialGradient(colors: [Color.red, Color.white], center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
            
            Image("Forest")
                .resizable()
                .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height)
                .scaledToFill()
            
            
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: UIScreen.main.bounds.width , height: 400)
                    .background(
                        Text("This is my Text just to show how background materials are working in SwiftUI........")
                            .foregroundColor(.green)
                    )
                //Background Materials allow us to see background contents
                //Background Materials can be apply on any view component in swiftUI
                    .background(.thinMaterial) // This is Transparent, we can see backgound also
                    //.background(.thickMaterial)
                    //.background(.ultraThinMaterial)
                    //.background(.ultraThickMaterial)
            }
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    BackgroundMaterials()
}
