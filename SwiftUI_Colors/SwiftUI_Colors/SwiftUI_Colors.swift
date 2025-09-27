//
//  SwiftUI_Colors.swift
//  SwiftUI_Colors
//
//  Created by user2 on 27/09/25.
//

import SwiftUI
import UIKit

struct SwiftUI_Colors: View {
    var body: some View {
        
        //Fixed color - for both Light/Dark Mode
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.red)
            .frame(width: 100, height: 50)
        
        //Fixed color - for both Light/Dark Mode - Colors Picker using color literal
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))) //#colorLiteral()
            .frame(width: 100, height: 50)
        
        
        
        //Auto Color - We can give Cutom color for light dark mode from Asserts + Color Set
        RoundedRectangle(cornerRadius: 10)
            .fill(Color("MyCustomColor")) //Custom Color from Asserts
            .frame(width: 100, height: 50)
        
        
        
        //Auto Color - Below are Pre Define colors, Auto Adapt Light/Dark Mode
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.primary) //Color, Auto adaptable with Light/Dart Mode
            .frame(width: 100, height: 50)
        
        
        //Auto Color - Below are Pre Define colors, Auto Adapt Light/Dark Mode
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.secondary) //Color, Auto adaptable with Light/Dart Mode
            .frame(width: 100, height: 50)
        
        
        //Auto Color - Below are Pre Define colors, Auto Adapt Light/Dark Mode
        RoundedRectangle(cornerRadius: 10) //UIKit Color, Auto adaptable with Light/Dart Mode
            .fill(Color(UIColor.secondarySystemBackground))
            .frame(width: 100, height: 50)
        
    }
}

#Preview {
    SwiftUI_Colors()
        .preferredColorScheme(.light)
}

#Preview {
    SwiftUI_Colors()
        .preferredColorScheme(.dark)
}
