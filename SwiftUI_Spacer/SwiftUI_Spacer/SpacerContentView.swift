//
//  SpacerContentView.swift
//  SwiftUI_Spacer
//
//  Created by user2 on 28/09/25.
//

import SwiftUI

struct SpacerContentView: View {
    var body: some View {
        
        
        //No Spacer example
        HStack(alignment: .center, spacing: 0) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
        }
        .frame(width: 300)
        .background(Color.blue) //HStack frame
        
        
        
        //Spacer will take all the available space in the superview/HStack
        HStack(alignment: .center, spacing: 0) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            Spacer() //Spacer will take all the available space in the superview/HStack
                .frame(height: 10) //in case of HStack spacer has height
                .background(Color.black)
        }
        .frame(width: 300)
        .background(Color.blue) //HStack frame
        
        
        //All spacer are taking equal spacing
        HStack(alignment: .center, spacing: 0) {
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
        }
        .frame(width: 300)
        .background(Color.blue) //HStack frame
        
        
        
        //All spacer are taking equal spacing
        HStack(alignment: .center, spacing: 0) {
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
        }
        //.frame(width: 300)
        .background(Color.blue) //HStack frame
        
        
        
        
        
        //All spacer are taking equal spacing
        //Default spacer is having minLength mandatory
        HStack(alignment: .center, spacing: 0) {
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
        }
        .background(Color.blue) //HStack frame
        .padding(.horizontal, 500) // EVEN after 500 padding spacer is STILL taking minLength
        .background(Color.orange) //HStack frame after padding
        
        
        
        
        
        
        //All spacer are taking equal spacing if minLength is not set
        //Default spacer is having minLength mandatory
        HStack(alignment: .center, spacing: 0) {
            Spacer(minLength: 5) //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Spacer() //All Spacer will take equal space from the available space in the superview/HStack
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            Spacer(minLength: 0) //We made minLength = 0, so if there is no space then spacer will become 0
                .frame(height: 10)
                .background(Color.black)
        }
        .background(Color.blue) //HStack frame
        .padding(.horizontal, 500) // EVEN after 500 padding spacer is STILL taking minLength
        .background(Color.orange) //HStack frame after padding
        
        
        
        
        
        //VStack, spacer pushes Rectangles
        //Spacer can have frames, in case of frame spacer take specified width height
        VStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(width: 5) //Spacer taking entire available space
                .background(Color.black)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
        }
        .frame(height: 150)
        .background(Color.blue)
        
        
        //VStack, spacer pushes Rectangles
        //Spacer can have frames, in case of frame spacer take specified width height
        VStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(width: 5, height: 20) //in case of VStack spacer has 30px height only rather than taking entire available space
                .background(Color.black)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
        }
        .frame(height: 150)
        .background(Color.blue)
        
        
    }
}

#Preview {
    SpacerContentView()
}
