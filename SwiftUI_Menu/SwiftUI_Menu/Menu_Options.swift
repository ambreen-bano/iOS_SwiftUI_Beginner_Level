//
//  Menu.swift
//  SwiftUI_Menu
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

struct Menu_Options: View {
    var body: some View {
        
        VStack(spacing: 20) {
            
            //Simple Menu to show some options
            Menu("Greetings") {
                Text("Hi")
                Text("Hello")
                Text("Hello, World!")
            }
            
            
            
            //Menu to show some Buttons options to take action on click
            Menu("Buttons") {
                Button("Button 1") {
                    
                }
                Button("Button 2") {
                    
                }
                Button("Button 3") {
                    
                }
            }
            
            
            
            //Menu with label to customize Menu button appearance
            Menu {
                //HStack {
                    ////This will not work for option customization
                    //Button("Button 1") {
                    //
                    //}
                    //Image(systemName: "gear")
                    
                    //Use Button label to customize options
                //}
                
                Button {
                    
                } label: {
                    Text("Button 1")
                    Image(systemName: "gear")
                }
                
                Button("Button 2") {
                    
                }
                Button("Button 3") {
                    
                }
            } label: {
                Button("Menu Button") {
                    
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    Menu_Options()
}
