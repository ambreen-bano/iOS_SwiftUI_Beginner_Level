//
//  Navigation_Link.swift
//  SwiftUI_NavigationLink
//
//  Created by Ambreen Bano on 01/10/25.
//

import SwiftUI

struct Navigation_Link: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                // NavigationLink title automatically shown as link
                // NavigationLink are working inside NavigationView
                // NavigationLink destinations are from RIGHT side, Sheets are from BOTTOM
                NavigationLink("Profile") {
                    //Here we need to give any view or screen as destination of the link click
                    Text("This is your profile")
                }
                
                NavigationLink("Settings") {
                    //Here we need to give any view or screen as destination of the link click
                    Text("This is your Settings")
                }
                Text("Hello, World!")
            }
            .navigationTitle("Home")
        }
    }
}


struct Navigation_LinkWithNewScreenNavigation: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                NavigationLink("Profile") {
                    //Here we need to give any view or screen as destination of the link click
                    MyProfileScreen()
                }
                Text("Hello, World!")
            }
            .navigationTitle("Home")
        }
    }
}



struct MyProfileScreen : View {
    
    //This presentationMode we can use in any View screen
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button {
            //We can use this in any view for cutom dismiss, with link views or with sheet views etc.
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "xmark")
        }
        Spacer()
        
        Text("This is your profile Screen")
        Text("This is from Navigation Link")
        Spacer()
            .navigationTitle("Profile Title") // We can set title without Navigation view (it will display when parent View has Navigation view)
        //.navigationBarBackButtonHidden(true) //When we want to hide Navigation View Default BACK Button
    }
}


#Preview {
    //Navigation_Link()
    Navigation_LinkWithNewScreenNavigation()
}
