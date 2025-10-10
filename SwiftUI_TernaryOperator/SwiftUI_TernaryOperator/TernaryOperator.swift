//
//  TernaryOperator.swift
//  SwiftUI_TernaryOperator
//
//  Created by Ambreen Bano on 29/09/25.
//

import SwiftUI

struct TernaryOperator: View {
    
    @State var isRed: Bool = true
    
    var body: some View {
        
        Button("isRed : \(isRed.description)") {
            isRed.toggle()
        }
        .padding()
        
        
        Text("Using If Else")
        //Repeated code for fill color using If else
        if isRed {
            RoundedRectangle(cornerRadius: 10)
                .fill(.red)
                .frame(width: 100, height: 50)
        } else {
            RoundedRectangle(cornerRadius: 20)
                .fill(.green)
                .frame(width: 150, height: 50)
        }
        
        
        Text("Using Ternary Operator ?:")
        //Very less code for fill color using Ternary operator ?:
        RoundedRectangle(cornerRadius: isRed ? 10 : 20)
            .fill(isRed ? .red : .green)
            .frame(width: isRed ? 100 : 150, height: 50)
        
    }
}



#Preview {
    TernaryOperator()
}
