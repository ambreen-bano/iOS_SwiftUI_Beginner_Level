//
//  SafeAreaContentView.swift
//  SwiftUI_SafeArea
//
//  Created by Ambreen Bano on 28/09/25.
//

import SwiftUI

//By Default - UI Components Contents are within Safe Area
struct SafeAreaContentView1: View {
    var body: some View {
        
        // Contents will NOT go outside safe area
        // By default UI Componets are within safe area
        ScrollView {
            Text("Hello, World!")
                .frame(maxWidth: .infinity, maxHeight: 30)
                .background(Color.red)
        }
        .background(Color.gray)
    }
}


// .ignoresSafeArea(edges: [.top]) - Contents ignore TOP safe area
struct SafeAreaContentView2: View {
    var body: some View {
        
        ScrollView {
            Text("Hello, World!")
                .frame(maxWidth: .infinity, maxHeight: 30)
                .background(Color.red)
        }
        .background(Color.gray)
        .ignoresSafeArea(edges: [.top])  //Ignore TOP safe area
    }
}


// .ignoresSafeArea(edges: []) - Contents within Safe Area
struct SafeAreaContentView3: View {
    var body: some View {
        
        ScrollView {
            Text("Hello, World!")
                .frame(maxWidth: .infinity, maxHeight: 30)
                .background(Color.red)
        }
        .background(Color.gray)
        .ignoresSafeArea(edges: []) //Contents will NOT go outside Safe Area
    }
}


#Preview {
    SafeAreaContentView1()
    //SafeAreaContentView2()
    //SafeAreaContentView3()
}





//Problem: We want color to fill all edges of the screen end to end
//Ignore Safe Area, contents will go out of safe area
struct SafeAreaContentView4: View {
    var body: some View {
        
        VStack {
            Text("Hello, World!")
                .bold()
                .frame(height: 20)
            
            ForEach(0..<21) { index in
                Rectangle()
                    .fill(.gray)
                    .frame(height: 30)
            }
        }
        .background(Color.yellow)
        .ignoresSafeArea() //Ignore Safe Area, contents will go out of safe area
    }
}

//Solution - Option 1: Ignore Safe area for Color ONLY inside Background()
struct SafeAreaContentView5: View {
    var body: some View {
        
        VStack {
            Text("Hello, World!")
                .bold()
                .frame(height: 20)
            
            ForEach(0..<20) { index in
                Rectangle()
                    .fill(.gray)
                    .frame(height: 30)
            }
        }
        .background(
            // Option 1: Ignore Safe area for Color ONLY inside Background()
            Color.yellow
                .ignoresSafeArea(edges: [.top, .bottom]) //Ignore Safe area for Color ONLY
        )
    }
}


// Solution - Option 2: Ignore Safe area for BG layer of Color ONLY inside ZStack
struct SafeAreaContentView6: View {
    var body: some View {
        
        // Option 2: Ignore Safe area for BG layer of Color ONLY inside ZStack
        ZStack {
            
            //BG Layer - ignoresSafeArea is only for BG layer contains color ONLY
            Color.yellow
                //.ignoresSafeArea(edges: [.top, .bottom]) //Ignore safe area for Color ONLY
                .ignoresSafeArea() //Ignore all edges for safe area
            
            //FG Layer - Within Safe Area
            VStack {
                Text("Hello, World!")
                    .bold()
                    .frame(height: 20)
                
                ForEach(0..<20) { index in
                    Rectangle()
                        .fill(.gray)
                        .frame(height: 30)
                }
            }
        }
    }
}



#Preview {
    //SafeAreaContentView4()
    //SafeAreaContentView5()
    //SafeAreaContentView6()
}
