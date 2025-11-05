//
//  SafeAreaInsets.swift
//  SwiftUI_SafeAreaInset
//
//  Created by Ambreen Bano on 03/10/25.
//

import SwiftUI


//Safe Area Insets use to display some UI in the safe area of the screen
struct SafeAreaInsets: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<10) { _ in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.purple)
                        .frame(width: 200, height: 200)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .navigationTitle("Title")
            
            
            
//            // Create View which align to bottom as footer
//            .safeAreaInset(edge: .bottom) {
//                Text("Hello this is your HOME screen!")
//                    .padding()
//                    .frame(height: 30)
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//            }
            
            
            
//            // Create Button which align to bottom edge and leading
//            .safeAreaInset(edge: .bottom, alignment: .leading) {
//                Text("+")
//                    .font(.title)
//                    .frame(width: 50, height: 50)
//                    .background(Color.yellow)
//                    .clipShape(.circle)
//                    .padding()
//                    .onTapGesture {
//                        //If we Want to perform some action
//                    }
//            }
            
            
            
//            // Create Button which align to top edge and trailing
//            .safeAreaInset(edge: .top, alignment: .trailing) {
//                Text("+")
//                    .font(.title)
//                    .frame(width: 50, height: 50)
//                    .background(Color.yellow)
//                    .clipShape(.circle)
//                    .padding()
//                    .onTapGesture {
//                        //If we Want to perform some action
//                    }
//            }
//            
            
            
            // Create View which align to top edge like header
            .safeAreaInset(edge: .top, alignment: .trailing) {
                Text("Hello this is your HOME screen!")
                    .padding()
                    .frame(height: 30)
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
                    .onTapGesture {
                        
                    }
            }
            
            
//            //We can get same effect using Overlays but good to use safeAreaInset as it will take care of all different devices.
//            .overlay(alignment: .bottom) {
//                Text("Hello this is your HOME screen!")
//                    .padding()
//                    .frame(height: 30)
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//                    .onTapGesture {
//                        
//                    }
//            }
        }
    }
}




#Preview {
    SafeAreaInsets()
}
