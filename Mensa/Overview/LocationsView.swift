//
//  LocationList.swift
//  Mensa
//
//  Created by Florian Moser on 18.04.22.
//

import SwiftUI

struct LocationsView: View {
    var locations: [Location]
    var body: some View {
            ForEach(locations) { location in
                Section(header: Text(location.title)) {
                    ForEach(location.mensas){ mensa in
                        NavigationLink(destination: MensaView(mensa: mensa)) {
                            SlimMensaView(mensa: mensa)
                        }
                    }
                }.headerProminence(.increased)
            }
    }
}

struct LocationList_Previews: PreviewProvider {
    static var locations = Location.generateSampleData()
    static var previews: some View {
        LocationsView(locations: locations)
    }
}
