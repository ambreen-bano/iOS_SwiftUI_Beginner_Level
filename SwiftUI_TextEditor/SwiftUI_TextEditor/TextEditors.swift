//
//  TextEditors.swift
//  SwiftUI_TextEditor
//
//  Created by Ambreen Bano on 02/10/25.
//

import SwiftUI

struct TextEditors: View {
    
    @State var textEditorText: String = ""
    
    var body: some View {
        
        VStack {
            TextEditor(text: $textEditorText)
                .autocorrectionDisabled() //we can disable auto correction
                .selectionDisabled() // we can disable text selectin
                .cornerRadius(20)
                .padding()
                .frame(height: 250)
                .foregroundColor(.blue)
            //.background(.red) This is not working on TextEditor
            //.colorMultiply(.red) //This works for BG Color but FG color changes to Black
                .submitLabel(.send)
                .onSubmit {
                    print("On Keyboard Submit Click, Text Editor text is .... \(textEditorText)")
                }
            
            Button("Print") {
                print(" Text Editor text is .... \(textEditorText)")
                textEditorText = ""
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .background(Color.gray)
    }
}




#Preview {
    TextEditors()
}
