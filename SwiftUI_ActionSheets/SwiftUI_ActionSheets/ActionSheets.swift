//
//  ActionSheets.swift
//  SwiftUI_ActionSheets
//
//  Created by user2 on 02/10/25.
//

import SwiftUI

//Difference between Alert and Action Sheet
// 1. Action sheet comes from bottom on the screen (Alert is popover on screen)
// 2. We can give any number of buttons in Action sheet (ONLY 2 buttons in Alert)

//Button Colors
//1. Default and Cancel Buttons - Blue or Accent color
//2. Destructive Button - Red Color

struct ActionSheets: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        Button("Show Action Sheet") {
            showActionSheet.toggle()
        }
        
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Tile of the Action Sheet"),
                message: Text("Message of the Action Sheet"),
                //We can give array of buttons.
                buttons: [
                    .default(Text("Ok"), action: {
                        
                    }),
                    .cancel(Text("Cancel"), action: {
                        
                    }),
                    .destructive(Text("Reoprt/Delete"), action: {
                        
                    })
                ]
            )
        }
    }
}



struct ActionSheetsForInstagramPost: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30)
                Text("This is Title for POST")
                Spacer()
                
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        .font(.headline)
                        .foregroundColor(.black)
                }
            }
            .padding()
            
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 300)
        }
        
        //        .confirmationDialog("", isPresented: $showActionSheet, actions: {
        //
        //        })
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    //Extract functions for Modularity and resuability
    func getActionSheet() -> ActionSheet {
        ActionSheet(
            title: Text("Tile of the Action Sheet"),
            message: Text("Message of the Action Sheet"),
            //We can give array (any number) of buttons
            buttons: [
                .default(Text("Ok"), action: {
                    
                }),
                .cancel(Text("Cancel"), action: {
                    
                }),
                .destructive(Text("Reoprt/Delete"), action: {
                    
                })
            ]
        )
    }
}


// ActionSheet are Depricating so it's replacement is confirmationDialog
struct ActionSheetsUsingConfirmationDialog : View {
    
    @State var showConfirmationSheet: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30)
                Text("This is Title for POST")
                Spacer()
                
                Button {
                    showConfirmationSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        .font(.headline)
                        .foregroundColor(.black)
                }
            }
            .padding()
            
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 300)
        }
        
        .confirmationDialog("Confirmation Dialog Title",
                            isPresented: $showConfirmationSheet,
                            titleVisibility: .visible,
                            actions: {
            //List of Buttons
            Button("Ok") {
                
            }
            Button("Cancel") {
                
            }
            Button("Report") {
                
            }
        }) {
            Text("Confirmation Dialog message")
        }
    }
}


#Preview {
    //ActionSheets()
    //ActionSheetsForInstagramPost()
    ActionSheetsUsingConfirmationDialog()
}
