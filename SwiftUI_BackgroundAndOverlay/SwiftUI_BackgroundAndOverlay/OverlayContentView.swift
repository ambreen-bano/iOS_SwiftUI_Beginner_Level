//
//  OverlayContentView.swift
//  SwiftUI_BackgroundAndOverlay
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

struct OverlayContentView: View {
    var body: some View {
        
        
        /*
         Overlay - On TOP/FRONT of UI Components
         Inside Overlay(View) we can -
         1. Color
         2. Gradient
         3. Shapes
         4. Custom Views/UI Components like Text etc.
         we can give alignment for Overlay contents like we do in frames
         Overlay contents will add in the Top/Front the UI Components
         */
        
        
        
        Spacer()
        Circle()
            .fill(Color.red)
            .frame(width: 50, height: 50)
            .overlay(Text("1")) //It will come in FRONT
            .background(Color.green) //It will come in BACK
        
        
        
        
        
        
        Spacer()
        Circle()
            .fill(Color.red)
            .frame(width: 50, height: 50)
            .overlay(Text("2").font(.title), alignment: .bottomTrailing) //It will come in FRONT, with alignment
            .background(
                Circle() //It will come in BACK
                    .fill(Color.green)
                    .frame(width: 60, height: 60)
            )
        
        
        
        
        
        Spacer()
        Circle()
            .fill(Color.red) // Draw a Circle with red Color
            .frame(width: 50, height: 50)
            .overlay(
                Circle() //This circle will come in FRONT with gradient
                    .fill(Gradient(colors: [Color.yellow, Color.blue]))
                    .frame(width: 40, height: 40)
            )
            .background( Circle() //This circle will come in BACK with Green Color
                .fill(Color.green)
                .frame(width: 60, height: 60))
        
        
        
        
        
        
        // Notification View Implementations
        Spacer()
        Image(systemName: "heart.fill")
            .font(.title)
            .foregroundColor(Color.white)
            .frame(width: 60, height: 60) //Gives frame to heart Image
            .background(
                Circle() //Purple Circle is added as BACKGROUND on heart Image
                    .fill(
                        LinearGradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .shadow(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.4879889456)) ,radius: 10, x: 0, y: 10)
            )
            .overlay(alignment: .bottomTrailing) {
                Circle() //Blue Circle is added as OVERLAY on heart Image frame
                    .fill(Color.blue)
                    .frame(width: 20, height: 20)
                    .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 0.5))  ,radius: 10, x: 5, y: 5)
                    .overlay(
                        Text("5") //Text 5 is added as OVERLAY on Blue Circle
                            .bold()
                            .font(.caption)
                            .foregroundColor(Color.white)
                    )
            }
            
        
        Spacer()
    }
}


#Preview {
    OverlayContentView()
}
