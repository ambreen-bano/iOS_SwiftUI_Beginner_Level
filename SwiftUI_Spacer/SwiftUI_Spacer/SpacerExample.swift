//
//  SpacerExample.swift
//  SwiftUI_Spacer
//
//  Created by user2 on 28/09/25.
//

import SwiftUI

struct SpacerExample: View {
    var body: some View {
        
        VStack {
            
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.green)
                    .border(Color.blue) //We can Apply Border also on UI Components
                Image(systemName: "gear")
            }
            .font(.title)
            .frame(height: 50)
            .background(Color.yellow)
            .padding(.horizontal)
            
            
            Spacer() //It will take all available spacing in VStack
                .frame(width: 10)
                .background(Color.green)
            
            
            Rectangle()
                .frame(height: 60)
        }
    
    }
}

#Preview {
    SpacerExample()
}


