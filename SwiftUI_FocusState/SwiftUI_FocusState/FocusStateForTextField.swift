//
//  FocusStateForTextField.swift
//  SwiftUI_FocusState
//
//  Created by Ambreen Bano on 02/10/25.
//

import SwiftUI

struct FocusStateForTextField: View {
    
    @State var userNameTextField: String = ""
    @FocusState var isUserNameFocues: Bool
    
    
    var body: some View {
        
        VStack {
            TextField(text: $userNameTextField) {
                Text("Enter User Name")
                    .padding()
                    .foregroundColor(.white)
                
            }
            .frame(width: 200, height: 50)
            .padding(.horizontal)
            .background(Color.purple)
            .cornerRadius(20)
            .focused($isUserNameFocues) //Text Field will be in focus on the basis of condition
            
        }
        .onAppear { //When view is getting Appear on screen
            isUserNameFocues = true
        }
    }
}


struct FocusStateForTextFieldOfPassword: View {
    
    @State var userNameTextField: String = ""
    @State var passwordTextField: String = ""
    @FocusState var isUserNameFocus: Bool
    @FocusState var isPasswordFocus: Bool
    
    var body: some View {
        
        VStack(spacing: 20) {
            TextField(text: $userNameTextField) {
                Text("Enter User Name")
                    .padding()
                    .foregroundColor(.white)
                    .italic()
                
            }
            .frame(width: 200, height: 50)
            .padding(.horizontal)
            .background(Color.green)
            .cornerRadius(20)
            .focused($isUserNameFocus) //Text Field will be in focus on the basis of condition
            .onSubmit {
                if userNameTextField.count >= 3 {
                    //Once userName validation done than we are focusing on password textfield
                    isPasswordFocus = true
                } else {
                    isUserNameFocus = true
                }
            }
            
            SecureField(text: $passwordTextField) {
                Text("Enter Password")
                    .padding()
                    .foregroundColor(.white)
                    .italic()
                
            }
            .frame(width: 200, height: 50)
            .padding(.horizontal)
            .background(Color.purple)
            .cornerRadius(20)
            .focused($isPasswordFocus) //Text Field will be in focus on the basis of condition
            
            
            Button {
                userNameTextField = ""
                passwordTextField = ""
                isUserNameFocus = true
                isPasswordFocus = false
                print("Loging......")
            } label: {
                Text("Login")
            }
            .buttonStyle(.borderedProminent)
            .disabled(!validateAllInputs())

            
        }
        .onAppear { //When view is getting Appear on screen we are focusing on User Name textfield
            isUserNameFocus = true
        }
    }
    
    func validateAllInputs() -> Bool {
        if userNameTextField.count >= 3 && passwordTextField.count > 0 {
            return true
        }
        return false
    }
    
}



// @FocusState with Hasable And Equatable Enum
// Useful when we have many text field on screen ( eg. forms)
struct FocusStateForTextFieldUsingEnum: View {
    
    @State var userNameTextField: String = ""
    @State var passwordTextField: String = ""
    @FocusState var focusedTextfield: FocusTextfield?
    
    
    enum FocusTextfield: Hashable {
        case userName
        case password
    }
    
    var body: some View {
        
        VStack(spacing: 20) {
            TextField(text: $userNameTextField) {
                Text("Enter User Name")
                    .padding()
                    .foregroundColor(.white)
                    .italic()
                
            }
            .frame(width: 200, height: 50)
            .padding(.horizontal)
            .background(Color.purple)
            .cornerRadius(20)
            .focused($focusedTextfield, equals: .userName)
            .onSubmit {
                if userNameTextField.count >= 3 {
                    //Once userName validation done than we are focusing on password textfield
                    focusedTextfield = .password
                } else {
                    focusedTextfield = .userName
                }
            }
            
            SecureField(text: $passwordTextField) {
                Text("Enter Password")
                    .padding()
                    .foregroundColor(.white)
                    .italic()
                
            }
            .frame(width: 200, height: 50)
            .padding(.horizontal)
            .background(Color.orange)
            .cornerRadius(20)
            .focused($focusedTextfield, equals: .password)
            
            
            Button {
                userNameTextField = ""
                passwordTextField = ""
                focusedTextfield = .userName
                print("Loging......")
            } label: {
                Text("Login")
            }
            .buttonStyle(.borderedProminent)
            .disabled(!validateAllInputs())

            
        }
        .onAppear { //When view is getting Appear on screen we are focusing on User Name textfield
            focusedTextfield = .userName
        }
    }
    
    func validateAllInputs() -> Bool {
        if userNameTextField.count >= 3 && passwordTextField.count > 0 {
            return true
        }
        return false
    }
    
}

#Preview {
    //FocusStateForTextField()
    //FocusStateForTextFieldOfPassword()
    FocusStateForTextFieldUsingEnum()
}
