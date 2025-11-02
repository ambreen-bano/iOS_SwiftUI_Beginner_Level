//
//  IfLetAndGuard.swift
//  SwiftUI_IfLet_Guard
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

struct IfLetAndGuard: View {

    @State var userID: String? = "123"
    @State var isLoading: Bool = false
    @State var displayText: String?
 
    
    var body: some View {
        NavigationStack {
            
            //How to use IF LET
            if let text = displayText {
                //This Text() view will add in view hirarchy or draw on screen only of text is NOT Nil
                Text(text)
                    .bold()
            } else if isLoading {
                //if isLoading is true then only we are adding loader in the view/screen
                ProgressView()
            }
        }
        .onAppear {
            
            //How to use GUARD LET
            guard let userID = userID else {
                //guard let is for early return if id is not available we will return from code
                return
            }
            
            //If id is available then only this code will execute
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                isLoading = false
                displayText = "This is from API for User \(userID)"
            }
        }
    }
}

#Preview {
    IfLetAndGuard()
}
