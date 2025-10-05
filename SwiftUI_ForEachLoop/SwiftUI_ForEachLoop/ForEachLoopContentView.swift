//
//  ForEachLoopContentView.swift
//  SwiftUI_ForEachLoop
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

struct ForEachLoopContentView: View {
    
    
    let data: [String] = ["Hi", "Hey", "Hello"]
    
    var body: some View {
        
        Spacer()
        // Manual without Loop
        VStack {
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }
        .foregroundColor(.red)
        
        
        
        
        Spacer()
        // Hardcoded data With Loop
        VStack {
            ForEach(0..<5) { index in
                Text("Hello, World!")
            }
        }
        .foregroundColor(.green)
        
        
        
        
        
        Spacer()
        // Dynamic data With Loop on index
        VStack {
            //Warning because data.indices are dynamic because of array is NOT read only
            //Warning because ForEach expects fixed range
            ForEach(data.indices) { index in
                Text("\(data[index])")
            }
        }
        .foregroundColor(.purple)
        
        
        
    
        
        
        Spacer()
        // Dynamic data With Loop on index
        VStack {
            //(data.indices, id: \.self)  -  tells swift that the index itself is the identity, So it will not give warning
            //Use like this only if your data is read only.
            //In this case we are getting index
            ForEach(data.indices, id: \.self) { index in
                HStack { //Within loop having HStack
                    Circle()
                        .frame(width: 10, height: 10)
                    Text("\(data[index])")
                }
            }
        }
        .foregroundColor(.yellow)
        
        
        
        
        
        
        Spacer()
        // Dynamic data With Loop on items of the array
        VStack {
            //(data, id: \.self)  -  tells swift that the index itself is the identity, So it will not give warning
            //Use like this if your data is NOT read only. And if it is dynamic
            //In this case we are getting array element/item
            ForEach(data, id: \.self) { item in
                HStack {
                    Circle()
                        .frame(width: 10, height: 10)
                    Text("\(item)")
                }
            }
        }
        .foregroundColor(.purple)
        Spacer()
    }
}



#Preview {
    ForEachLoopContentView()
}
