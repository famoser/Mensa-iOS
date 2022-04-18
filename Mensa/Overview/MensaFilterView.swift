//
//  MensaFilter.swift
//  Mensa
//
//  Created by Florian Moser on 18.04.22.
//

import SwiftUI

struct MensaFilterView: View {
    @State var selected1 = 0
    @State var selected2 = 0
    @State var selected3 = false
    
    var body: some View {
        Section() {
            Picker(selection: $selected1, label: Text(""), content: {
                Text("Deutsch").tag(0)
                Text("English").tag(1)
            }).pickerStyle(SegmentedPickerStyle())
            Picker(selection: $selected2, label: Text(""), content: {
                Text("Lunch").tag(0)
                Text("Dinner").tag(1)
            }).pickerStyle(SegmentedPickerStyle())
            Toggle(isOn: $selected3) {
                Label("Only favorites", systemImage: "star")
            }
        }
    }
}

struct MensaFilter_Previews: PreviewProvider {
    static var previews: some View {
        MensaFilterView()
    }
}
