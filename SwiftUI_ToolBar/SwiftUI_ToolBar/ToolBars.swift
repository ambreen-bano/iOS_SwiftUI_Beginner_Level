//
//  ToolBars.swift
//  SwiftUI_ToolBar
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

//NavigationBarItem is Depricated -> ToolBar is New way

struct ToolBars: View {
    
    @State var addTextField: String = ""
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    TextField("Add Text....", text: $addTextField)
                        .padding()
                    ForEach(0..<20) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 200, height: 100, alignment: .center)
                    }
                    
                }
            }
            .navigationTitle("Nav Title")
            //            // navigationBarItems is DEPRICATED
            //            .navigationBarItems(
            //                leading: NavItem(image: "person"),
            //                trailing: NavItem(image: "gear"))
            
            
            //New way to add navigation items in Tool bar
            .toolbar {
                //Items will be added in the Nav Top Bar
                ToolbarItem(placement: .topBarLeading) {
                    NavItem(image: "person")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    //Wrap them in HStack for multiple items
                    HStack {
                        NavItem(image: "gear")
                        NavItem(image: "car")
                    }
                }
                
                //Item will be added in the bottom bar
                ToolbarItem(placement: .bottomBar) {
                    NavItem(image: "gear")
                        .foregroundColor(.red)
                }
                
                //Item will be added in the Keyboard
                ToolbarItem(placement: .keyboard) {
                    NavItem(image: "gear")
                        .foregroundColor(.green)
                }
            }
            
            //To change ONLY tool bar mode
            .toolbarColorScheme(.light, for: .navigationBar)
            
            //This is appear ONLY on SCROLLING
            .toolbarTitleMenu {
                Button("Button 1") {
                    
                }
                Button("Button 1") {
                    
                }
            }
        }
    }
}


struct NavItem: View {
    @State var image: String = ""
    
    var body: some View {
        Button {
            //Perform Action
        } label: {
            Image(systemName: image)
        }
    }
}


#Preview {
    ToolBars()
}
