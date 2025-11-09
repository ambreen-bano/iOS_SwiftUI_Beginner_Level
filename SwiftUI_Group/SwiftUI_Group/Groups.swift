//
//  Groups.swift
//  SwiftUI_Group
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI


struct WithoutGroups: View {
    
    //In Stacks we can also apply mofifiers for all view of stacks
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }
        .foregroundColor(.green)
    }
}


struct WithGroups: View {
    
    //In Stacks we can also apply mofifiers for all view of stacks
    //But if we don't want to apply ALL views of stack. So, we can use to group some Views to apply common modifiers
    var body: some View {
        VStack {
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundColor(.purple)
            
            Text("Hello, World!")
                .foregroundColor(.green)
        }
    }
}


#Preview {
    //WithoutGroups()
    WithGroups()
}
