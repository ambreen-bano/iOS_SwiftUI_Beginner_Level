//
//  MARK_Comments.swift
//  SwiftUI_MARK_Comments
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

struct MARK_Comments: View {
    
    //This is Simple Comment for single line comments
    
    /* This is
     for Multi Line Comments.
     Shortcut is Option + Command + Left Arrow
     Editor -> Code Folding -> Fold
     Double click to unfold the code or comments
     Once you Fold it will be fold inside code even if you close your project */
    
    ///This 3 slashes we use for adding documentation as shown below for setAlertTitle method
    
    //NAVIGATION: START and END: NAVIGATION comments use at start and end of {} for code redability
    
    
    
    //Mark is use to highlight main components of the code and we can see these MARK in Minimap and we can scroll from minimap to specific code components
    //MARK: Properties
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var showAlert: Bool = false
    
    
    
    //MARK: Body
    var body: some View {
        
        NavigationStack { //NAVIGATION: START
            VStack { //VSTACK: START
                Text("Hello, World!")
                Button("Show Alert") {
                    setAlertTitle(title: "Alert Title", message: "This is Alert Message")
                    ButtonTapped()
                }
            } //END: VSTACK
            .alert(alertTitle, isPresented: $showAlert) {
                Button("Delete", role: .destructive) {
                    
                }
                Button("Cancel", role: .cancel) {
                    
                }
            } message: {
                Text("This is Alert Message")
            }
        }// END: NAVIGATION
    }
    
    
    
    
    //MARK: Methods
    
    //Using /// This is a Way to Add Documentation for your Complex methods so every one cab easily understand
    ///This is setAlertTitle summary for documentation
    ///This will set title and message for Alert
    /// - Parameter title: This is Alert Tile
    /// - Returns : Returns Nothings
    
    func setAlertTitle(title: String, message: String){
        alertTitle = title
        alertMessage = message
    }
    
    func ButtonTapped() {
        showAlert.toggle()
    }
    
}



#Preview {
    MARK_Comments()
}
