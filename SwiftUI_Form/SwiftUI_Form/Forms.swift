//
//  Forms.swift
//  SwiftUI_Form
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

struct Forms: View {
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var dob: Date = Date()
    @State var onlineStatus: Bool = false
    @State var numberOfNewsLetter: Int = 0
    
    
    var body: some View {
        
        NavigationStack {
            
            
            Form {
                //Inside form we can create separate sections with headers and footers
                //Section 1
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    DatePicker("Date of Birth", selection: $dob, displayedComponents: .date)
                        .foregroundColor(.green)
                } header: {
                    Text("Personal Information")
                }
                
                //Section 2
                Section {
                    Toggle("Online Status", systemImage: "circle.fill", isOn: $onlineStatus)
                        .listRowSeparator(.hidden) //This is use to HIDE FORM separator from Toggle View
                    
                    Stepper("Number Of News Letter : \(numberOfNewsLetter)", value: $numberOfNewsLetter, in: 0...100)
                    Link(destination: URL(string: "https://www.google.com")!) {
                        Text("Terms And Conditions")
                    }
                } header: {
                    Text("Preferences")
                }
                
                
                //Section 3
                Section {
                    
                } footer: {
                    
                    
                    //OPTION 1: To Save Form Data we can create button at the bottom of the form
                    Button("Save") {
                        //Save Form Information
                    }
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color(#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    .shadow(radius: 20)
                }
            }
            .navigationTitle("Account")
            .toolbar {
                
                //OPTION 2: To Save Form Data we can create button at the Top Trailing of the screen in ToolBar as ToolbarItem
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        //Save Form Information
                    }
                    .font(.headline)
                    .frame(width: 60, height: 50, alignment: .center)
                    .foregroundColor(.green)
                }
            }
            
            
            Spacer()
            
        }
        //This is for tint colors for the controls
        .tint(.yellow)
        .onTapGesture {
            //Whenever we will click anywhere in the view, we are hiding keyboard
            hideKeyboard()
        }
        
    }
}

#Preview {
    Forms()
}



extension View {
    //We are writing View extension for hiding keyboard from View
    //Whenever this method is called we are sending notification of hiding keyboard using resignFirstResponder
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
