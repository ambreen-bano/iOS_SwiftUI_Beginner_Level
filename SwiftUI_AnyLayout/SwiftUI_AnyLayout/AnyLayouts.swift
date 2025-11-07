//
//  AnyLayouts.swift
//  SwiftUI_AnyLayout
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

struct AnyLayouts: View {
    
    //These are environment properties for device layout
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    
    var body: some View {
        
        Spacer()
        Text(horizontalSizeClass.debugDescription)
        Text(verticalSizeClass.debugDescription)
        Spacer()
        
        //If Device is compact horizonatlly then we will use VStack Layout otherwise we will use HStack Layout
        let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
        
        layout {
            //On iphone 16 Pro -> horizontalSizeClass is compact so our layout is VStack layout
            //On iphone 16 Pro Max -> horizontalSizeClass is regular so our layout is HStack layout
            //This is Auto layouting for different size devices
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }
        
        Spacer()
    }
}

#Preview {
    AnyLayouts()
}
