//
//  NestedStacksContentView.swift
//  SwiftUI_HVZStacks
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

struct NestedStacksContentView: View {
    var body: some View {
        
        //We can have Nested Stacks, and can manage spacing and alignments for them
        
        //ZStack Starting
        ZStack(alignment: .trailing) {
            Rectangle()
                .fill(Color.yellow)
                
            
            //VStack Starting
            VStack(alignment: .leading, spacing: 20, content: {
                Text("VStack").bold()
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 30, height: 30)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 60, height: 40)
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 80, height: 50)
                
                
                //HStack Starting
                HStack(alignment: .bottom, spacing: 10, content: {
                    Text("HStack").bold()
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 30, height: 30)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 60, height: 40)
                    
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 80, height: 50)
                }) //HStack Ending
                .background(Color.white)
                
                
            }) //VStack Ending
            .background(Color.purple)
            
            
        }//ZStack Ending
 
    }
}



#Preview {
    NestedStacksContentView()
}
