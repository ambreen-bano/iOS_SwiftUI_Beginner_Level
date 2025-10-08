//
//  ExtractFunctionsAndViews.swift
//  SwiftUI_ExtractFunctionsAndViews
//
//  Created by Ambreen Bano on 29/09/25.
//

import SwiftUI

struct WithoutExtractFunctionsAndViews: View {
    
    var body: some View {
        
        ZStack{
            //Background Layer
            Color.purple.ignoresSafeArea()
            
            //Foreground Layer
            VStack {
                Text("Hello, World!")
                Button("Tap Me") {
                    print("Button Tapped")
                }
                .padding()
                .padding(.horizontal, 10)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
            }
        }
    }
}



//Extraction -
//1. Increase Redability
//2. Increase Modularity
//3. Increase Reusability

struct ExtractFunctionsAndViews: View {
    
    var body: some View {
        ZStack{
            //Background Layer
            backgroundLayer
            
            //Foreground Layer
            foregroundLayer
        }
    }
    
    //View Extraction as computed property
    //Use it when View doesn't need initializer
    var backgroundLayer: some View {
        Color.purple.ignoresSafeArea()
    }
    
    //View Extraction as computed property
    //Use it when View doesn't need initializer
    var foregroundLayer: some View {
        VStack {
            Text("Hello, World!")
            Button("Tap Me") {
                buttonTapped()
            }
            .padding()
            .padding(.horizontal, 10)
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(10)
        }
    }
    
    //Function Extraction
    func buttonTapped() {
        print("Button Tapped")
    }
}

#Preview {
    //WithoutExtractFunctionsAndViews()
    ExtractFunctionsAndViews()
}
