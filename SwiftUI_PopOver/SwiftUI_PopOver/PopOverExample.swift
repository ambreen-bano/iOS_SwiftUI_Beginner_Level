//
//  PopOverExample.swift
//  SwiftUI_PopOver
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

struct PopOverExample: View {
    
    @State var showPopOver: Bool = false
    
    var body: some View {
        
        VStack {
            
            Button("Rating") {
                showPopOver.toggle()
            }
            .buttonStyle(.borderedProminent)
            .popover(isPresented: $showPopOver, attachmentAnchor: .point(.top)) {
                VStack{
                    Button("Good 🥰") {
                        showPopOver.toggle()
                    }
                    Divider()
                    Button("Bad 😊") {
                        showPopOver.toggle()
                    }
                    Divider()
                    Button("Average ☹️") {
                        showPopOver.toggle()
                    }
                    
                }
                .foregroundColor(Color.purple)
                .padding()
                .presentationCompactAdaptation(.popover)
            }
            
            
        }
    }
}

#Preview {
    PopOverExample()
}
