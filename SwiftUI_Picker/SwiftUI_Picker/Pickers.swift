//
//  Pickers.swift
//  SwiftUI_Picker
//
//  Created by Ambreen Bano on 03/10/25.
//

import SwiftUI

struct WheelPickers: View {
    
    @State var selectedAge: Int = 18
    
    var body: some View {
        
        Spacer()
        VStack {
            Text("Wheel Style")
            Text("Age is : \(selectedAge) Years").bold()
            
            //we can give default selected value
            Picker("My Age", selection: $selectedAge) {
                ForEach(0..<100) { age in
                    Text("Age : \(age)")
                        .fontWeight(.medium)
                        .foregroundColor(.purple)
                        .tag(age)  //Each option can have tag
                }
            }
            .pickerStyle(.wheel)  //We can give different styles for picker
            .padding()
        }
        Spacer()
    }
}



struct MenuPickers: View {
    
    @State var selectedAge: Int = 5

    var body: some View {
        
        Spacer()
        VStack {
            Text("Menu Style")
            Text("Age is : \(selectedAge) Years").bold()
            
            //we can give default selected value
            Picker("My Age", selection: $selectedAge) {
                ForEach(0..<10) { age in
                    Text("Age : \(age)")
                        .fontWeight(.medium)
                        .foregroundColor(.purple)
                        .tag(age)  //Each option can have tag
                }
            }
            .pickerStyle(.menu)  //We can give different styles for picker
            .padding()
        }
        Spacer()
        
        
        
        
        
        VStack {
            Text("Menu and Form Style")
            Text("Age is : \(selectedAge) Years").bold()

            Form {
                Picker("My Age", selection: $selectedAge) {
                    ForEach(0..<10) { age in
                        Text("Age : \(age)")
                            .fontWeight(.medium)
                            .foregroundColor(.purple)
                            .tag(age)  //Each option can have tag
                    }
                }
                .pickerStyle(.menu)  // Now it shows as a button-style dropdown
            }
            .frame(height: 100) // limit form height if needed
        }

        Spacer()
        
    }
}





struct SegmentedPickers: View {

    @State var gender: String = "Male"
    var genderOptions: [String] = ["Male", "Female", "Other"]
    
    
    init() {
        
        //After setting these editings on UISegmentedControl, all the UISegmentedControl of this struct/View will adopt color as we define here.
        //This is for filling selected segmented option
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        
        
        //This is for selected segmented option
        let selectedOptionAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor : UIColor.white //App will crash if we use Color.white because Picker is UIKit component
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(selectedOptionAttributes, for: .selected)
        
        
        //This is for normal state segmented option
        let normalTextAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor : UIColor.purple //App will crash if we use Color.white because Picker is UIKit component
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(normalTextAttributes, for: .normal)
    }
    

    var body: some View {
        
        Spacer()
        VStack {
            Text("Segmented Style")
            Text("Gender is : \(gender)").bold()
            
            //we can give default selected value
            Picker("", selection: $gender) {
                ForEach(genderOptions.indices, id: \.self) { index in
                    Text("\(genderOptions[index])")
                        .fontWeight(.medium)
                        .foregroundColor(.purple)
                        .tag(genderOptions[index])  //Each option can have tag
                }
            }
            .pickerStyle(.segmented)  //We can give different styles for picker
            .padding()
        }
        Spacer()
        
    }
}


#Preview {
    //WheelPickers()
    MenuPickers()
    //SegmentedPickers()
}
