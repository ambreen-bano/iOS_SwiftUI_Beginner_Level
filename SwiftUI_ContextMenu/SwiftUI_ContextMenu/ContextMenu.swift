//
//  ContextMenu.swift
//  SwiftUI_ContextMenu
//
//  Created by Ambreen Bano on 02/10/25.
//

import SwiftUI

struct ContextMenu: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill").font(.largeTitle)
            Text("Options!").bold()
            Text("How to use context menu").bold()
        }
        .frame(width: 300, height: 200)
        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
        .foregroundColor(.white)
        .cornerRadius(20)
        .contextMenu {
            Text("Menu Item 1")
            Text("Menu Item 1")
            Text("Menu Item 1")
            Text("Menu Item 1")
        }
    }
}


struct ContextMenu2: View {
    @State var bgColor = Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill").font(.largeTitle)
            Text("Options!").bold()
            Text("How to use context menu").bold()
        }
        .frame(width: 300, height: 200)
        .background(bgColor)
        .foregroundColor(.white)
        .cornerRadius(20)
        .contextMenu {
            //As a Menu we can give any number of Views
            Button {
                bgColor = .red
            } label: {
                Text("Red")
                Image(systemName: "flame")
            }
            
            
            Button {
                bgColor = .blue
            } label:  {
                Text("Blue")
                Image(systemName: "flame")
            }
            
            
            Button {
                bgColor = .yellow
            } label:  {
                Text("Yellow")
                Image(systemName: "flame")
            }
            
            
            Button {
                bgColor = .green
            } label:  {
                Text("Green")
                Image(systemName: "flame")
            }
        }
    }
}



#Preview {
    // ContextMenu()
    ContextMenu2()
}
