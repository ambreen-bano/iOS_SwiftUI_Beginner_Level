//
//  ScrollViewContentView.swift
//  SwiftUI_ScrollView
//
//  Created by user2 on 28/09/25.
//

import SwiftUI

struct ScrollViewContentView: View {
    var body: some View {
        
        
        //Wrap view inside VStack for VERTICAL scrolling
        //showsIndicators can be set
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 300, height: 100)
                        .cornerRadius(20)
                }
            }
            .padding()
        }
        
        
        
        
        
        
        //Wrap view inside HStack for HORIZONTAL scrolling
        //showsIndicators can be set
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 100, height: 200)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ScrollViewContentView()
}
