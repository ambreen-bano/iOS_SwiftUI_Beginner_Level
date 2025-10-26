//
//  TextFields.swift
//  SwiftUI_TextField
//
//  Created by Ambreen Bano on 02/10/25.
//

import SwiftUI

struct TextFields: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        VStack {
            TextField(text: $textFieldText) {
                Text("Enter Text Here...")
                    .bold()
                    .foregroundColor(.white)
            }
            .bold()
            .foregroundColor(.red)
            .padding()
            .background(Color.green)
            .cornerRadius(20)
            .padding()
            .selectionDisabled() //Disable text selection inside text field
            
            Text(textFieldText)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.black)
        }
    }
}

struct SecureFields: View {
    
    @State var passwordFieldText: String = ""
    
    var body: some View {
        VStack {
            //For Password or secure text we can use SecureField
            SecureField(text: $passwordFieldText) {
                Text("Enter Your Password")
                    .bold()
                    .foregroundColor(.white)
            }
            .bold()
            .foregroundColor(.red)
            .padding()
            .background(Color.green)
            .cornerRadius(20)
            .padding()
            .selectionDisabled() //Disable text selection inside text field
            
            Text(passwordFieldText)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.black)
        }
    }
}


struct TextFieldsValidation: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        VStack {
            
            //Text Field
            TextField(text: $textFieldText) {
                Text("Enter Text Here...")
                    .bold()
                    .foregroundColor(.white)
            }
            .bold()
            .foregroundColor(.red)
            .padding()
            .background(Color.green)
            .cornerRadius(20)
            .padding()
            .selectionDisabled() //Disable text selection inside text field
            
            
            
            //Save Button
            Button {
                print("saving.....")
            } label: {
                Text("Save")
                    .bold()
                    .padding(.all, 10)
                
            }
            .buttonStyle(.borderedProminent)
            .disabled(!isValid()) //Button will become enable when char is >= 3 count
        }
    }
    
    
    func isValid() -> Bool {
        if textFieldText.count >= 3 {
            return true
        } else {
            return false
        }
    }
}



struct TextFieldsOnChangeOnSubmit: View {
    
    @State var nameFieldText: String = ""
    @State var isNameValid: Bool = false
    @State var isReturned: Bool = false
    
    var body: some View {
        VStack {
            
            //Text Field with onChnage and onSubmit Callbacks
            //onChange we can use on any view
            TextField("Enter Name ", text: $nameFieldText)
                .onChange(of: nameFieldText) { oldValue, newValue in
                    //when user TYPES text this will call
                    print("Changed from \(oldValue) → \(newValue)")
                    //We can do validation here
                    nameValidation()
                }
                .submitLabel(.search) //We can Customize Keybord submit Button Name
                .onSubmit {
                    //When user CLICK Return/Enter button on keyboard this will call
                    isReturned = true
                }
                .bold()
                .foregroundColor(.red)
                .padding()
                .background(Color.green)
                .cornerRadius(20)
                .padding()
                .selectionDisabled() //Disable text selection inside text field
            
            
            
            //Save Button
            Button {
                //Reset/Clear all for next data
                nameFieldText = ""
                isReturned = false
                isNameValid = false
                print("saving.....")
            } label: {
                Text("Save")
                    .bold()
                    .padding(.all, 10)
                
            }
            .buttonStyle(.borderedProminent)
            .disabled(!isNameValid) //Button will become enable when char is >= 3 count
            
            if isReturned {
                //Will show when we get returned callback
                Text("Return/Enter Clicked on Keyboard")
            }
        }
    }
    
    
    func nameValidation() {
        if nameFieldText.count >= 3 {
            isNameValid = true
        } else {
            isNameValid = false
        }
    }
}



#Preview {
    //TextFields()
    //SecureFields()
    //TextFieldsValidation()
    TextFieldsOnChangeOnSubmit()
}
