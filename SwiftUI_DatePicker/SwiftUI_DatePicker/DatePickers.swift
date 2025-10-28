//
//  DatePickers.swift
//  SwiftUI_DatePicker
//
//  Created by Ambreen Bano on 03/10/25.
//

import SwiftUI

struct WheelDatePickers: View {
    @State var selectedDate: Date = Date()
    
    var body: some View {
        VStack {
            Text("Wheel Date Picker")
                .bold()
                .padding()
                .foregroundColor(.green)
            DatePicker("", selection: $selectedDate)
                .padding()
                .cornerRadius(20)
                .padding()
                .bold()
                .foregroundColor(Color.purple) //This is for Date Picker Label
                .tint(Color.red) //This is for Date Picker date and time
                .datePickerStyle(.wheel)
        }
    }
}






struct CompactDatePickers: View {
    @State var selectedDate: Date = Date()
    
    var body: some View {
        
        VStack {
            Text("Compact Date Picker")
                .bold()
                .padding()
                .foregroundColor(.green)
            
            
            DatePicker("Select a Data", selection: $selectedDate)
                .padding()
                .cornerRadius(20)
                .padding()
                .bold()
                .foregroundColor(Color.purple) //This is for Date Picker Label
                .tint(Color.red) //This is for Date Picker date and time
                .datePickerStyle(.compact)
            
            //Using displayedComponents we can select what we want to display on screen
            DatePicker("Select a Data", selection: $selectedDate, displayedComponents: [.date])
                .padding()
                .cornerRadius(20)
                .padding()
                .bold()
                .foregroundColor(Color.purple) //This is for Date Picker Label
                .tint(Color.red) //This is for Date Picker date and time
                .datePickerStyle(.compact)
        }
    }
}





struct GraphicalDatePickers: View {
    @State var selectedDate: Date = Date()
    
    var body: some View {
        VStack {
            Text("Graphical Date Picker")
                .bold()
                .padding()
                .foregroundColor(.green)
            DatePicker("Select a Data", selection: $selectedDate)
                .padding()
                .cornerRadius(20)
                .padding()
                .bold()
                .foregroundColor(Color.purple) //This is for Date Picker Label
                .tint(Color.red) //This is for Date Picker date and time
                .datePickerStyle(.graphical)
        }
    }
}



struct DatePickersDateWithRange: View {
    @State var selectedDate: Date = Date()
    @State var startDate: Date = Date()
    @State var endDate: Date = Calendar.current.date(from: DateComponents(year: 2050)) ?? Date()
    
    
    //Format Date for displaying on screen
    var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        //dateFormatter.dateStyle = .short
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        return dateFormatter
    }
    
    
    var body: some View {
        
        VStack {
            Text("Graphical Date Picker")
                .bold()
                .padding()
                .foregroundColor(.green)
            //Use DateFormatter for displaying date time on screen
            Text(dateFormatter.string(from: selectedDate))
            
            
            DatePicker("Book Your Appointment", selection: $selectedDate, in: startDate...endDate)
                .padding()
                .cornerRadius(20)
                .padding()
                .bold()
                .foregroundColor(Color.purple) //This is for Date Picker Label
                .tint(Color.red) //This is for Date Picker date and time
                .datePickerStyle(.graphical)
            
        }
    }
}


#Preview {
    //WheelDatePickers()
    //CompactDatePickers()
    //GraphicalDatePickers()
    DatePickersDateWithRange()
}
