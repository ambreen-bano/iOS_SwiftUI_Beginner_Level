//
//  Sliders.swift
//  SwiftUI_Slider
//
//  Created by Ambreen Bano on 03/10/25.
//

import SwiftUI


struct Sliders: View {
    
    @State var sliderValue: Double = 4
    
    init() {
        print("We can use print inside init or functions but NOT inside body or any property which returns View type")
    }
    
    //Inside view we can NOT add print or any logic which is not related to UI component
    var body: some View {
        
        VStack {
            //Text Without formatting
            Text("Selected Value : \(sliderValue)")
                .bold()
                .foregroundColor(.green)
            
            //Text Format String to display only till 3 decimal places
            Text(String(format: "Formatted Selected Value : %.3f", sliderValue))
                .bold()
                .foregroundColor(.green)
            
            
            
            
            //1. Default Slider, value increament in floats
            Slider(value: $sliderValue)
                .tint(.purple)
                .padding()
            
        }
    }
}



struct SlidersWithRange: View {
    
    @State var sliderValue: Double = 4
    @State var textColor: Color = .red
    
    init() {
        print("We can use print inside init or functions but NOT inside body or any property which returns View type")
    }
    
    //Inside view we can NOT add print or any logic which is not related to UI component
    var body: some View {
        
        VStack {
            
            //Text Format String to display only till 3 decimal places
            Text(String(format: "Formatted Selected Value : %.3f", sliderValue))
                .bold()
                .foregroundColor(textColor)
            
    
            //2. Slider, value increament using step
            Slider(value: $sliderValue, in: 0...50, step: 1.0) { value in
               //This block will execute when slider value is getting change
                textColor = .purple
            }
            .tint(.yellow)
            .padding()
        
        }
    }
}




struct SlidersWithMinMaxLabels: View {
    
    @State var sliderValue: Double = 4
    @State var textColor: Color = .purple
    
    init() {
        print("We can use print inside init or functions but NOT inside body or any property which returns View type")
    }
    
    //Inside view we can NOT add print or any logic which is not related to UI component
    var body: some View {
        
        VStack {
            
            //Text Format String to display only till 3 decimal places
            Text(String(format: "Formatted Selected Value : %.3f", sliderValue))
                .bold()
                .foregroundColor(textColor)
        
            
            //3. Slider, value increament using step
            Slider(value: $sliderValue, in: 0...10, step: 1.0) {
                Text("slider Label")
            } minimumValueLabel: {
                Text("Start")
                    .bold()
                    .foregroundColor(.purple)
            } maximumValueLabel: {
                Text("End")
                    .bold()
                    .foregroundColor(.purple)
            } onEditingChanged: { value in
                //This block will execute when slider value is getting change
                textColor = .yellow
            }
            .tint(.yellow)
            .padding()
        }
    }
}



#Preview {
    //Sliders()
    //SlidersWithRange()
    SlidersWithMinMaxLabels()
}
