//
//  ColorsForDarkMode.swift
//  SwiftUI_DarkModeColors
//
//  Created by user2 on 05/10/25.
//

import SwiftUI

struct ColorsForDarkMode: View {
    
    //Environment property for colorScheme to check App mode(Light/Dark)
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        //Predefine color which is adaptable for Different modes
        Text("Hello, World!")
            .foregroundColor(.primary)
        
        
        //Predefine color which is adaptable for Different modes
        Text("Hello, World!")
            .foregroundColor(.secondary)
        
        
        //This is our custom color for Light and dark mode define in Assert folder as Color set
        //Light Mode - Green
        //Dark Mode - Yellow
        Text("Hello, World!")
            .foregroundColor(Color("CustomColor"))
        
        //While hardcoding color remember color should be visible for both light/dark modes, as red will be visible on both
        Text("Hello, World!")
            .foregroundColor(Color.red)
        
        //PROBLEM, NOTE : This white hardcoded color is not visible on light mode
        Text("Hello, World!")
            .foregroundColor(Color.white)
        
        //SOLUTION : So, we can use Environment property colorScheme for hardcoding differnet colors for different modes
        Text("Hello, World!")
            .foregroundColor(colorScheme == .light ? Color.red : Color.white)
    
    }
}


#Preview {
    //We can set preferredColorScheme on views
    ColorsForDarkMode()
        .preferredColorScheme(.dark)
}


#Preview {
    ColorsForDarkMode()
        .preferredColorScheme(.light)
}

