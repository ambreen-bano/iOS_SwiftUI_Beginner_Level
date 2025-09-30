//
//  IconsContentView.swift
//  SwiftUI_Icons
//
//  Created by Ambreen Bano on 27/09/25.
//

import SwiftUI
// Icons are from SF Symbols
struct IconsContentView: View {
    var body: some View {
        
        // .font() for size
        Image(systemName: "heart.fill") //system images icons are from SF Symbols
            .font(.largeTitle) //Icong Size can be set using font
        
        Image(systemName: "heart.fill")
            .font(.system(size: 50)) //Icong Size can be set using font
        
       
        
        
        // .frame() for size with mandatory modifier resizable()
        Spacer()
        Image(systemName: "heart.fill") //Icong Size can be set using frame
            .frame(width: 50, height: 50) //frame modifier NOT working here
         
        Image(systemName: "heart.fill")
            .resizable() //frame modifier will work ONLY. If we call resizable()
            .frame(width: 50, height: 50)
        
        
        
        
        // .aspectRatio()
        Spacer()
        Image(systemName: "heart.fill")
            .resizable() //frame modifier will work ONLY. If we call resizable()
            .aspectRatio(contentMode: .fill) //resize() image size to FILL in the frame (alternate is scaledToFill())
            .frame(width: 100, height: 50)
        Spacer()
        
        Image(systemName: "heart.fill")
            .resizable()
            .aspectRatio(contentMode: .fit) //resize() image size to remain FIT in the frame (alternate is scaledToFit())
            .frame(width: 100, height: 50)
        
        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFit() //resize() image size to remain fit in the frame (alternate is scaledToFit())
            .frame(width: 100, height: 50)
    
        
        
        
        // .clipped()
        Spacer()
        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFill()
            .frame(width: 50, height: 50)
            .clipped() //It will clipped all the image portion which is outside frame
        
        
        
        
        // .foregroundColor()
        Spacer()
        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .foregroundColor(.red) //We can change Icon color
        
        
        
        
        // .renderingMode()
        Spacer()
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original) //This is required for multicolor SF Symbols Icons
            .font(.largeTitle)
             //We can NOT change green/Red/Yellow Color areas of the icons
            .foregroundColor(.purple) //We can ONLY change blue color area of the icon
        Spacer()
    }
}


#Preview {
    IconsContentView()
}
