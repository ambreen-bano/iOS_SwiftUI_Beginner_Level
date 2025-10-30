//
//  SwiftUI_DarkModeColorsApp.swift
//  SwiftUI_DarkModeColors
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

@main
struct SwiftUI_DarkModeColorsApp: App {
    var body: some Scene {
        WindowGroup {
            //ColorsForDarkMode().preferredColorScheme(.light)
            ColorsForDarkMode().preferredColorScheme(.dark)
        }
    }
}
