//
//  OnAppearOnDisappear.swift
//  SwiftUI_OnAppearOnDisappear
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

struct OnAppearOnDisappear: View {
    
    @State var textToDisplay: String = "This is Cache Text"
    
    var body: some View {
        
        NavigationStack {
            Text(textToDisplay)
        }
        .navigationTitle("Title")
        .onAppear {
            //When the view appear on the screen.
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                //Simulate to Call API or any work which we want to call immediately after view is appear on screen
                textToDisplay = "This is from API text"
            }
        }
        .onDisappear {
            //When the view leaves the screen.
            //Use to cleanup, like remove observers etc...
            textToDisplay = ""
        }
    }
}



struct OnAppearOnDisappearWithView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack { //This is LAZY LOADING. So, only few will appear on screen at a time. Rest will appear as we start scrolling
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 200, height: 200)
                            .onAppear {
                                //WE can use onAppear/onDisappear on any View
                                count = count + 1
                            }
                    }
                }
            }
            .navigationTitle("Count : \(count)")
        }
    }
}


#Preview {
    //OnAppearOnDisappear()
    OnAppearOnDisappearWithView()
}
