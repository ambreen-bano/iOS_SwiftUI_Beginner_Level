//
//  NestedScrollViewContentView.swift
//  SwiftUI_ScrollView
//
//  Created by user2 on 28/09/25.
//

import SwiftUI

struct NestedScrollViewContentView: View {
    var body: some View {
        
        //VStack / HStack / ZStack
        //All child views are created and rendered immediately, even if they are offscreen.
        //Use for small sets of views.
        //Uses Lot's of Memory
        
        
        //LazyVStack / LazyHStack / LazyZStack
        //Child views are created only when they appear on screen (or are about to)
        //Use when you have lots of items
        //Uses minimal or Very small amount of Memory (10 - 12 cells are created in memory at a time)
        
        
        
        //This is Verical ScrollView
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack {
                ForEach(0..<50) { index in
                    
                    //Each Row of Vertical ScrollView Contains Horizontal ScrollView
                    //This is Horizontal scrollView
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<50) { index in
                                
                                //Single Cell inside ScrollViews
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white)
                                    .frame(width: 200, height: 200)
                                    .shadow(radius: 10)
                                    .padding()
                                
                            }
                        }
                    } //Horizontal scrollView End
                }
            }
        } //Vertical scrollView End
        
        
        
        
        
    }
}

#Preview {
    NestedScrollViewContentView()
}
