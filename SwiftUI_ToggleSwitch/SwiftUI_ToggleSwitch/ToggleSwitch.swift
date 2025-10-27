//
//  ToggleSwitch.swift
//  SwiftUI_ToggleSwitch
//
//  Created by Ambreen Bano on 03/10/25.
//

import SwiftUI

struct ToggleSwitch: View {
    
    @State var isActive: Bool = true
    
    var body: some View {
        VStack {
            Text("Online Status")
                .bold()
            
            //Switch for toggle Online Status
            Toggle(isOn: $isActive) {
                Text("is Active")
            }
           // .toggleStyle(.button) //If we want toggle should look like button on UI
           // .toggleStyle(SwitchToggleStyle(tint: .indigo))
            .tint(.purple)
            
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleSwitch()
}
