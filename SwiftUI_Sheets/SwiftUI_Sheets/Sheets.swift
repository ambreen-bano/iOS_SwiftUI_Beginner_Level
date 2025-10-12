//
//  Sheets.swift
//  SwiftUI_Sheets
//
//  Created by Ambreen Bano on 30/09/25.
//

import SwiftUI

struct Sheets: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.red.ignoresSafeArea()
            
            Button("Show Sheet"){
                showSheet.toggle()
            }
            .bold()
            .foregroundColor(.white)
            
            
            //1. We should always use ONE .sheet per view
            //2. We should always use ONE .fullScreenCover per view
            //3. At a time use either .sheet or .fullScreenCover in a view
            //3. Do NOT use if-else or any conditional statements inside sheet block to show multiple sheets
            
            //            .sheet(isPresented: $showSheet){
            //                MySheet()
            //
            //                // Here we can give any view or any new screen view
            //                // Text("Hello")
            //
            //                // Never use conditional statemets to show multiple sheets, it will give flow errors, there is another way to handle multiple sheets
            //                //            if showSheet1 {
            //                //                sheet2
            //                //            } else{
            //                //                sheet2
            //                //            }
            //            }
            
            
            
            .sheet(isPresented: $showSheet){
                MySheet()
            }
            
            
            //ONLY difference from sheet - It will cover entire screen area like new screen
            //.fullScreenCover(isPresented: $showSheet) {
            //    MySheet()
            //}
        }
    }
}


//New View - presenting as sheet
struct MySheet: View {
    
    //This is use for closing sheet
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.green.ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Button {
                    //This is use for closing sheet
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .padding(.all)
                }
                
                Text("This is my Sheet!")
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
            }
            
        }
        
    }
}


#Preview {
    Sheets()
    //MySheet()
}
