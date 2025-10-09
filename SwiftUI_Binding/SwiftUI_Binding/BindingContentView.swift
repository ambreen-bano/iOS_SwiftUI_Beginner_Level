//
//  BindingContentView.swift
//  SwiftUI_Binding
//
//  Created by Ambreen Bano on 29/09/25.
//

import SwiftUI

//@State properties are only use WITHIN the View
//@Binding properties are also use OUTSIDE the View

//@Binding - use ONLY in child class
//@Binding - use to BIND "@State property of parent class" in child class, using $ symbol as prefix on @State property
//@Binding - use to access @State property of parent class
//@Binding - Use to define "@State property of parent class" in Child class
//@Binding - Use in Child class to change "@State property of Parent class"
//@Binding is use to change parent property ONLY and it does NOT OWN its life cycle. life cycle of the property is own by parent class only. So, Parent is OWNER of the @State property


struct ParentContentView: View {
    
    //@State - We are telling View to watch the state of the variable and when variable changes, change View - it will rerender UI with modified values of the property
    // @State - bgColor and title properties LIFE CYCLE is managed by parent class (OWNER)
    @State var bgColor: Color = .clear
    @State var title: String = "Parent Initial Title"
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            VStack {
                Text(title).font(.largeTitle).bold()
                ChildContentView1(bgColor: $bgColor, title: $title)
                ChildContentView2(bgColor: $bgColor, title: $title)
            }
        }
    }
}


struct ChildContentView1: View {
   
    //@Binding is use to bind parent class properties with child class to access it
    //@Binding properties can not initialize at any default values
    // Using @Binding, properties bgColor and title of the parent class can be access and change by child class (NOT OWNER)
    //Child class can have it's own @State properties
    
    
    @Binding var bgColor: Color
    @Binding var title: String
    
    var body: some View {
        Button("Child1") {
            bgColor = .purple
            title = "Parent Title And Color updated from Child 1"
        }
        .bold()
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
        .multilineTextAlignment(.center)
    }
}



struct ChildContentView2: View {
   
    @Binding var bgColor: Color
    @Binding var title: String
    
    //Child class can have it's own @State properties, which use within Child View
    @State var buttonBGColor: Color = .blue
    
    
    var body: some View {
        Button("Child2") {
            bgColor = .green
            title = "Parent Title And Color updated from Child 2"
            buttonBGColor = .brown
        }
        .padding()
        .background(buttonBGColor)
        .foregroundColor(.white)
        .cornerRadius(10)
        .multilineTextAlignment(.center)
    }
}


#Preview {
    ParentContentView()
}
