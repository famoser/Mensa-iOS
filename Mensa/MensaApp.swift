//
//  MensaApp.swift
//  Mensa
//
//  Created by Florian Moser on 30.12.21.
//

import SwiftUI

@main
struct MensaApp: App {
    @State var locations: [Location] = try! loadLocations()
    var body: some Scene {
        WindowGroup {
            Overview(mensas: locations[0].mensas)
        }
    }
}

func loadLocations() throws -> [Location] {
    if let fileURL = Bundle.main.url(forResource: "locations-ethz", withExtension: "json") {
        if let fileContents = try? Data(contentsOf: fileURL) {
            let decoder = JSONDecoder()
            return try decoder.decode([Location].self, from: fileContents)
        }
    }
    
    return Location.sampleData
}
