//
//  Timer.swift
//  Workshop
//
//  Created by Best Chantanapongvanij on 3/25/24.
//

import SwiftUI

struct CustomTimePicker: View {
    // Define your state for hours and minutes
    @State private var selectedHour: Int = 0
    @State private var selectedMinute: Int = 0
    
    // Define ranges for hours and minutes
    let hours = Array(0...23)
    let minutes = Array(0...59)
    
    var body: some View {
        HStack {
            // Hours picker
            Picker(selection: $selectedHour, label: Text("Hour")) {
                ForEach(hours, id: \.self) { hour in
                    Text("\(hour) hr").tag(hour)
                }
            }
            .pickerStyle(WheelPickerStyle())
            .frame(width: 100, height: 150)
            .clipped()

            // Minutes picker
            Picker(selection: $selectedMinute, label: Text("Minute")) {
                ForEach(minutes, id: \.self) { minute in
                    Text("\(minute) min").tag(minute)
                }
            }
            .pickerStyle(WheelPickerStyle())
            .frame(width: 100, height: 150)
            .clipped()
        }
    }
}

struct CustomTimePicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomTimePicker()
    }
}
