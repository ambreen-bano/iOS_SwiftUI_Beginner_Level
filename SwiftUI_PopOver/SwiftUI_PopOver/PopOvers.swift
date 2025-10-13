//
//  PopOvers.swift
//  SwiftUI_PopOver
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

struct PopOvers: View {
    
    @State var showPopOver1: Bool = false
    @State var showPopOver2: Bool = false
    @State var showPopOver3: Bool = false
    @State var showPopOver4: Bool = false
    
    var body: some View {
        
        VStack(spacing: 30) {
            
            Button("PopOver 1") {
                showPopOver1.toggle()
            }
            .buttonStyle(.borderedProminent)
            //PopOver Will attach with the View we are specifying
            .popover(isPresented: $showPopOver1) {
                PopOversScreen()
                    .presentationCompactAdaptation(.sheet) //Support sheet. Bydefault is .sheet
            }
            
            
            
            
            
            Button("PopOver 2") {
                showPopOver2.toggle()
            }
            .buttonStyle(.borderedProminent)
            //Popover on View
            //attachmentAnchor we can control from where we want arrow attachment with the View
            
            .popover(isPresented: $showPopOver2, attachmentAnchor: .point(.topLeading)) {
                PopOversScreen()
                    .presentationCompactAdaptation(.popover)
            }
            
            
            
            
            
            
            
            Button("PopOver 3") {
                showPopOver3.toggle()
            }
            .buttonStyle(.borderedProminent)
            .popover(isPresented: $showPopOver3, attachmentAnchor: .point(.top)) {
                PopOversScreen()
                    .presentationCompactAdaptation(.popover) //popover on view
            }
            
            
            
            
            
            
            
            Button("PopOver on VStack") {
                showPopOver4.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
        //We can attach popover with any view
        .popover(isPresented: $showPopOver4) {
            PopOversScreen()
                .presentationCompactAdaptation(.fullScreenCover) // Support fullScreenCover
        }
    }
}





struct PopOversScreen: View {
    var body: some View {
        VStack {
            Text("This is PopOver Screen")
            Text("This is description")
        }
        .padding()
        .background(Color.teal)
    }
}


#Preview {
    PopOvers()
}
