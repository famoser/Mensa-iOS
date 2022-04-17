//
//  MensaApp.swift
//  Mensa
//
//  Created by Florian Moser on 30.12.21.
//

import SwiftUI

@main
struct MensaApp: App {
    @State var locations: [Location] = loadLocations()
    var body: some Scene {
        WindowGroup {
            Overview(mensas: locations[0].mensas)
        }
    }
}

func loadLocations() -> [Location] {
    do {
        var locations: [Location] = []
        let ethLocations = try loadETHLocations()
        locations = ethLocations.map { Location(title: $0.title, mensas: $0.mensas.map { $0.createMensa() }) }
        
        return locations
    } catch let error {
        print(error)
    }
    
    return []
}

func loadETHLocations() throws -> [ETHLocation] {
    if let fileURL = Bundle.main.url(forResource: "locations-ethz", withExtension: "json") {
        if let fileContents = try? Data(contentsOf: fileURL) {
            let decoder = JSONDecoder()
            return try decoder.decode([ETHLocation].self, from: fileContents)
        }
    }
    
    return []
}
