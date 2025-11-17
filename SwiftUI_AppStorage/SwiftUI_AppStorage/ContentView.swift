//
//  ContentView.swift
//  SwiftUI_AppStorage
//
//  Created by Ambreen Bano on 06/10/25.
//

import SwiftUI

struct AppStorageView: View {
    @State var textFieldText: String = ""
    //Using @AppStorage It will automatically fetch and save using specified key
    @AppStorage("user_Name") var userName: String?
    
    var body: some View {
        
        if let userName = userName { //When we read userName. It will read from AppStorage
            Text(userName)
                .bold()
                .foregroundStyle(.red)
        } else {
            TextField("Enter Your Name", text: $textFieldText).padding(.horizontal, 30)
            Button("Save") {
                //When we set userName property then it will save in AppStorage with key userName
                userName = textFieldText
            }
            .buttonStyle(.borderedProminent)
        }
    }
}


#Preview {
    AppStorageView()
}
