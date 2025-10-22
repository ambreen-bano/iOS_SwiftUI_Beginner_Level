//
//  NavigationViews.swift
//  SwiftUI_NavigationView
//
//  Created by Ambreen Bano on 01/10/25.
//

import SwiftUI


//Always have only ONE NavigationView per view hirarchy
//DO NOT ADD NavigationView inside another NavigationView

struct Navigation_View: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                Text("Hi")
                Text("Hello!")
                Text("Hello, World!")
            }
            .navigationTitle("My Navigation Title") //This is Title
            .navigationBarTitleDisplayMode(.automatic) //Title is large and become inline inside header on scrolling
            // .navigationBarTitleDisplayMode(.inline) //Title is inline inside header
            // .navigationBarHidden(true) //We can Hide Navigation title
            .navigationBarItems( //We can add buttons in navigation bar
                leading:
                    //IF we just want to show some image or text without link
                Image(systemName: "person.fill").foregroundColor(.blue),
                trailing:
                    Button(action: {
                        //CAN OPEN NEW SCREEN OR DO SOME ACTION
                    }, label: {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                    })
            )
        }
    }
}



struct Navigation_ViewWithMultipleBarButtons: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                Text("Hi")
                Text("Hello!")
                Text("Hello, World!")
            }
            .navigationTitle("My Navigation Title") //This is Title
            .navigationBarTitleDisplayMode(.automatic) //Title is large and become inline inside header on scrolling
            // .navigationBarTitleDisplayMode(.inline) //Title is inline inside header
            // .navigationBarHidden(true) //We can Hide Navigation title
            .navigationBarItems( //We can add buttons in navigation bar
                leading:
                    
                    HStack { //Using Stack we can give multiple Bar button in leading/trailing
                        Button(action: {
                            //CAN OPEN NEW SCREEN OR DO SOME ACTION
                        }, label: {
                            Image(systemName: "car")
                                .foregroundColor(.red)
                        })
                        
                        Button(action: {
                            //CAN OPEN NEW SCREEN OR DO SOME ACTION
                        }, label: {
                            Image(systemName: "gear")
                                .foregroundColor(.red)
                        })
                    },
                trailing:
                    
                    HStack { //Using Stack we can give multiple Bar button in leading/trailing
                        Button(action: {
                            //CAN OPEN NEW SCREEN OR DO SOME ACTION
                            
                        }, label: {
                            Image(systemName: "person.fill")
                                .foregroundColor(.red)
                        })
                        
                        Button(action: {
                            //CAN OPEN NEW SCREEN OR DO SOME ACTION
                        }, label: {
                            Image(systemName: "xmark")
                                .foregroundColor(.red)
                        })
                    }
            )
        }
    }
}




#Preview {
    //Navigation_View()
    Navigation_ViewWithMultipleBarButtons()
}
