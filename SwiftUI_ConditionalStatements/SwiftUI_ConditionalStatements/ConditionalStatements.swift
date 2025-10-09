//
//  ConditionalStatements.swift
//  SwiftUI_ConditionalStatements
//
//  Created by Ambreen Bano on 29/09/25.
//

import SwiftUI

struct ConditionalStatements: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Button("Circle: \(showCircle.description)") {
                    showCircle.toggle()
                }
                
                Button("Rectangle: \(showRectangle.description)") {
                    showRectangle.toggle()
                }
                
                Button("IsLoading: \(isLoading.description)") {
                    isLoading.toggle()
                }
            }
            
            Spacer()
            HStack {
                
                //If - Statement
                if isLoading {
                    ProgressView()
                        .padding(.all)
                }
                
                //If - Statement
                if showCircle {
                    Circle()
                        .frame(width: 50)
                }
                
                //If - Statement
                if showRectangle {
                    Rectangle()
                        .frame(width: 100, height: 50)
                }
                
                
                // NOT and AND Operators
                //Option 1 - we can use ,
                if !showRectangle, !showCircle {
                    Capsule()
                        .frame(width: 100, height: 50)
                }
                
                //Option 2 - we can use &&
                if !showRectangle && !showCircle {
                    Capsule()
                        .frame(width: 100, height: 50)
                }
                
                
                
                
                //If Else - Statement
                if showCircle{
                    Circle()
                        .fill(.orange)
                        .frame(width: 50)
                } else {
                    Capsule()
                        .fill(.green)
                        .frame(width: 100, height: 50)
                }
                
                
                //If Else if - Statement
                if showCircle {
                    Circle()
                        .fill(.red)
                        .frame(width: 50)
                } else if showRectangle {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 100, height: 50)
                }
            }
            Spacer()
        }
    }
}


#Preview {
    ConditionalStatements()
}
