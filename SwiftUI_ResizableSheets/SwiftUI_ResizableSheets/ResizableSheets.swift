//
//  ResizableSheets.swift
//  SwiftUI_ResizableSheets
//
//  Created by Ambreen Bano on 03/10/25.
//

import SwiftUI

struct ResizableSheets: View {
    
    @State var showSheet: Bool = false
    @State var selectedSize: PresentationDetent = .height(300)
    
    
    var body: some View {
        
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack {
                Button("Show Sheet") {
                    showSheet.toggle()
                }
                .bold()
                .font(.largeTitle)
                .foregroundColor(.green)
            }
         
            .sheet(isPresented: $showSheet) {
                MySheetScreen()
                
                /*
                //1. We can resize sheet with predefine sizes
                    //.presentationDetents([.large])
                    .presentationDetents([.medium])
                    .presentationDetents([.large, .medium])
                */
                
                
                
                /*
                //2. We can resize sheet with screen percentage
                //Sheet will display with 10% of the screen and we can drag it to make it 50% etc....
                    .presentationDetents([.fraction(0.1), .fraction(0.5)])
                 */
                
                
                
                
                /*
                //3. We can resize sheet with Height
                //Sheet will display with 400px of the screen and we can drag it to make it 700px etc....
                    .presentationDetents([.height(400), .height(700)])
                 */
                
                
                
                /*
                //1. We can resize sheet with predefine sizes but we can set selectedSize also to display programaticall if we want to programatically switch between sizes on the basis of some conditions
                // $selectedSize is 300px, so when app display on screen it will be of 300px size
                // $selectedSize will work when it's value is define inside set below-
                    .presentationDetents([.large, .medium, .height(300), .fraction(0.2)], selection: $selectedSize)
                */
                
                
                
                
                /*
                //We can hide sheet resizable drag indicator if we want-
                    .presentationDetents([.medium, .large])
                    .presentationDragIndicator(.hidden) //Use to hide Drag indicator
                */
                
                
                
                
                
                //We can disable sheet dismiss for forcing user to take some action on sheet if required eg. some selection is required from user to take for using app -
                    .presentationDetents([.medium, .large])
                    .interactiveDismissDisabled() //User can not dismiss sheet by dragging or by clicking outside sheet
            }
        }
    }
}


struct MySheetScreen: View {
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            VStack {
                Text("This is my Resizable Sheet!")
                Text("Drag to see the Resizable effects")
            }
        }
    }
}



#Preview {
    ResizableSheets()
}
