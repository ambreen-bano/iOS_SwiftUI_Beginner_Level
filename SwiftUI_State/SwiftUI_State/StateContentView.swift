//
//  StateContentView.swift
//  SwiftUI_State
//
//  Created by Ambreen Bano on 29/09/25.
//

import SwiftUI

struct StateContentView: View {
    
    //@State - We are telling View to watch the state of the variable and when variable changes, change View - it will rerender UI with modified values of the property
    //To modify struct properties Option 1 - it should be var and @state
    //To modify struct properties  Option 2 - it should be var and modify inside mutating function
    
    
    @State var bgColor: Color = Color.red
    @State var title : String = "Title"
    @State var count : Int = 0
    var exampleCount : Int = 0
    
    //Computed Property
    var body: some View {
    
        ZStack {
            bgColor.ignoresSafeArea()
            
            VStack {
            
                Text(title)
                    .padding()
                Text("\(count)")
                    .padding()
                
                HStack {
                    Button("Increment") {
                        count = count + 1
                        bgColor = .green
                        title = "Counter Step by 1"
                    }
                    .padding()
                    
                    Button("Decrement") {
                        count = count - 1
                        bgColor = .purple
                        title = "Counter Step by -1"
                    }
                    .padding()
                }
            }
            .foregroundColor(.white)
            .bold()
        }
    }
    
    //Mutating Function/Method
    mutating func modifyProperties(){
        exampleCount = exampleCount + 1
    }
}


#Preview {
    StateContentView()
}
