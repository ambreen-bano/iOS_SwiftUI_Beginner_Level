//
//  GradientsContentView.swift
//  SwiftUI_Gradients
//
//  Created by Ambreen Bano on 27/09/25.
//

import SwiftUI

struct GradientsContentView: View {
    var body: some View {
        
        Spacer()
        //Default Gradient is Linear and direction is Top to Bottom
        RoundedRectangle(cornerRadius: 10)
            .fill(Gradient(colors: [Color.red, Color.green]))
            .frame(width: 200, height: 50)
        
        
        
        
        //Linear Gradient, effect is linear from one side to another
        //Linear Gradient and direction is leading to trailing (L to R)
        RoundedRectangle(cornerRadius: 10)
            .fill(LinearGradient(colors: [Color.red, Color.green], startPoint: .leading, endPoint: .trailing))
            .frame(width: 200, height: 50)
        
        //Linear Gradient
        RoundedRectangle(cornerRadius: 10)
            .fill(LinearGradient(colors: [Color.red, Color.green], startPoint: .topTrailing, endPoint: .bottomLeading))
            .frame(width: 150, height: 100)
        
        
        
        
        
        //Radial Gradient, effect is circular
        //Radial Gradient, radius is blurr width or blurr area
        //startRadius - blurr effect will start
        //endRadius - blurr effect end
        //Radial Gradient, center: Center for radial/circular effect
        RoundedRectangle(cornerRadius: 10)
            .fill(RadialGradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))], center: .center, startRadius: 5, endRadius: 50)) //Effect start from center
            .frame(width: 200, height: 80)
        
        //Radial Gradient, radial/circular effect center is at top leading
        RoundedRectangle(cornerRadius: 10)
            .fill(RadialGradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))], center: .topLeading, startRadius: 10, endRadius: 100)) //Effect start from Top Leading
            .frame(width: 200, height: 100)
        
        
        
        
        
        //Angular Gradient, effect start from angle
        RoundedRectangle(cornerRadius: 10)
            .fill(AngularGradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))], center: .center, angle: .degrees(0))) //Effect Starts from 0 angle, clockwise
            .frame(width: 100, height: 100)
        
        //Angular Gradient, center: line center position is at frame center, means line will start from center
        RoundedRectangle(cornerRadius: 10)
            .fill(AngularGradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))], center: .center, angle: .degrees(90))) //Effect Start from 45 degree angle, clockwise
            .frame(width: 100, height: 100)
        
        //Angular Gradient, center: line center position is at frame topLeft, means line starts from top Left
        RoundedRectangle(cornerRadius: 10)
            .fill(AngularGradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))], center: .topLeading, angle: .degrees(180 + 45))) //Effect Start from 45 degree angle, clockwise
            .frame(width: 100, height: 100)
        
        
        //We Can give Gradient in Text
        Text("iOS")
            .font(.system(size: 30))
            .fontWeight(.heavy)
            .foregroundStyle(LinearGradient(colors: [Color.red, Color.green], startPoint: .leading, endPoint: .trailing))
        Spacer()
    }
}

#Preview {
    GradientsContentView()
}
