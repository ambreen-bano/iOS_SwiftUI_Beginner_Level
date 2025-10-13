//
//  SheetTransitionAnimation.swift
//  SwiftUI_SheetVsTransitionVsAnimation
//
//  Created by Ambreen Bano on 30/09/25.
//

import SwiftUI

struct SheetTransitionAnimation: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        
        ZStack {
            Button("Show Sheet") {
                showSheet.toggle()
            }
            .bold()
            
            //Below are the 3 different ways to implement Bottom Sheets
            
            //Method 1 : SHEET
            //        .sheet(isPresented: $showSheet) {
            //            MyBottomSheet()
            //        }
            
            
            //Method 2 : Transition
            //           ZStack {
            //                if showSheet {
            //                    MyBottomSecondSheet(showSheet: $showSheet)
            //                        .cornerRadius(30)
            //                        .padding(.top, 100)
            //                        .ignoresSafeArea(edges: .bottom)
            //                        .transition(.move(edge: .bottom))
            //                        .animation(.easeInOut)
            //                }
            //            }
            //            .zIndex(2) //To make this bottom sheet on top
            
            
            //Method 3 : Animation with Offset
            MyBottomSecondSheet(showSheet: $showSheet)
                .cornerRadius(30)
                .padding(.top, 100)
                .ignoresSafeArea(edges: .bottom)
                .offset(y: showSheet ? 0 : UIScreen.main.bounds.height)
                .animation(.easeInOut)
        }
    }
}


struct MyBottomSheet : View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.purple.ignoresSafeArea()
            VStack(alignment: .leading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.all)
                }
                Spacer()
            }
        }
    }
}



struct MyBottomSecondSheet : View {
    
    @Binding var showSheet: Bool
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.purple.ignoresSafeArea()
            VStack(alignment: .leading) {
                Button {
                    showSheet.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.all)
                }
                Spacer()
            }
        }
    }
}



#Preview {
    SheetTransitionAnimation()
}
