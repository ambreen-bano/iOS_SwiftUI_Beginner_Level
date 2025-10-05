//
//  InitAndEnumContentView.swift
//  SwiftUI_InitAndEnums
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI


struct InitAndEnumContentView: View {
    
    //We can define our Enum
    enum Fruits: String {
        case Apples = "Apples"
        case Oranges = "Oranges"
        case Banana = "Banana"
    }
    
    
    //These are properties so don't need to hardcode values inside view
    let backgroundColor: Color
    let count: Int
    let title: Fruits
    
    
    //This is default initializer for Swift Struct, but we can customize if required
    //    init(backgroundColor: Color, count: Int, title: Fruits) {
    //        self.backgroundColor = backgroundColor
    //        self.count = count
    //        self.title = title
    //    }
    
    
    // We can customize init if required
    init(count: Int, title: Fruits) {
        self.count = count
        self.title = title
        
        switch title {
        case .Apples:
            self.backgroundColor = .red
        case .Oranges:
            self.backgroundColor = .orange
        case .Banana:
            self.backgroundColor = .yellow
        }
    }
    
    
    //This is body Computed property
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .underline()
            
            Text("\(title)")
        }
        .font(.title)
        .bold()
        .foregroundColor(.white)
        .frame(width: 120, height: 120)
        .background(backgroundColor)
        .cornerRadius(10)
        
    }
}



#Preview {
    HStack {
        //Reusing view with different property values as they are NOT hardcoded in view
        InitAndEnumContentView(count: 300, title: .Apples)
        InitAndEnumContentView(count: 200, title: .Oranges)
        InitAndEnumContentView(count: 500, title: .Banana)
    }
}
