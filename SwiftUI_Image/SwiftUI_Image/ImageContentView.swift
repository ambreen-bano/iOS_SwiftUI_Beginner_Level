//
//  ImageContentView.swift
//  SwiftUI_Image
//
//  Created by Ambreen Bano on 27/09/25.
//

import SwiftUI

struct ImageContentView: View {
    var body: some View {
        
        
        //Step1 : Add images in the Assert Folder
        //Step2: Use Image name
        Spacer()
        Image("Google")
            .resizable() // resizable() required with frame modifier in case of icone/images
            .frame(width: 100, height: 20)
        
        Image("Google")
            .resizable()
            .scaledToFit() //It will resize image in a way that image will remain fit inside frame only
            .frame(width: 100, height: 50)
        
        // .clipped
        Image("Google")
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 50)
            .clipped() //It will clip all the image area outside of frame area
        
        
        
        
        
        // .cornerRadius
        Spacer()
        Image("SwiftUI_ImageLarge")
            .resizable()
            .frame(width: 100, height: 50)
        
        Image("SwiftUI_ImageLarge")
            .resizable()
            .frame(width: 100, height: 50)
            .cornerRadius(20) //Radius to make rounded corners
        
        Image("SwiftUI_ImageLarge")
            .resizable()
            .frame(width: 100, height: 100) //Square size frame
            .cornerRadius(50) //1/2 width as Radius to make it circular as needed in profile images
        
        
        
        
        
        // .clipShape
        Spacer()
        Image("SwiftUI_ImageLarge")
            .resizable()
            .frame(width: 200, height: 100)
            .clipShape(Circle()) //We can use clipShape for cropping image of any shape
            
        Image("SwiftUI_ImageLarge")
            .resizable()
            .frame(width: 100, height: 100) //Square size frame
            .clipShape(RoundedRectangle(cornerRadius: 20))
        
        
        
        
        // .foregroundColor with NON Transparent Image
        Spacer()
        Image("SwiftUI_ImageLarge")
            .resizable()
            .frame(width: 40, height: 40)
        
        Image("SwiftUI_ImageLarge")
            .renderingMode(.template) //template mode - all non transparent pixel color will change, that's why foregroundColor will WORK ONLY transparent BG images
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.red)
        
    
        // .foregroundColor with Transparent Image
        Spacer()
        Image("Google") //Google Image
            .resizable()
            .frame(width: 40, height: 40)

        
        Image("Google") //Google Image with foregroundColor
        //WE can set renderingMode from Right inspector also from Render As option(then no need to set in code)
            .renderingMode(.template) //template mode - all non transparent pixel color will change, that's why foregroundColor is work with ONLY transparent BG images
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.red)
        
        Spacer()
    }
}


#Preview {
    ImageContentView()
}
