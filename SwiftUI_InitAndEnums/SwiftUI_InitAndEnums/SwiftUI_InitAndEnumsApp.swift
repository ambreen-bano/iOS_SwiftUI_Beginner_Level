//
//  SwiftUI_InitAndEnumsApp.swift
//  SwiftUI_InitAndEnums
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

@main
struct SwiftUI_InitAndEnumsApp: App {
    var body: some Scene {
        WindowGroup {
            HStack {
                //Reusing view with different property values as they are NOT hardcoded in view
                InitAndEnumContentView(count: 300, title: .Apples)
                InitAndEnumContentView(count: 200, title: .Oranges)
                InitAndEnumContentView(count: 500, title: .Banana)
            }
        }
    }
}
