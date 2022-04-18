//
//  Overview.swift
//  Mensa
//
//  Created by Florian Moser on 16.04.22.
//

import SwiftUI

struct Overview: View {
    @State var locations: [Location]
    var body: some View {
        NavigationView {
            Form {
                MensaFilterView()
                LocationsView(locations: locations)
            }
            .navigationTitle("Mensas")
        }
    }
}

struct Overview_Previews: PreviewProvider {
    static var locations = Location.generateSampleData()
    static var previews: some View {
        Overview(locations: locations)
    }
}
