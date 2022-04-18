//
//  SampleData.swift
//  Mensa
//
//  Created by Florian Moser on 17.04.22.
//

import Foundation


extension Location {
    static func generateSampleData() -> [Location] {
        return [
            Location(title: "Zentrum", mensas: Mensa.generateSampleData()),
            Location(title: "Hönggerberg", mensas: Mensa.generateSampleData())
        ]
    }
}


extension Mensa {
    static func generateSampleData() -> [Mensa] {
        return [
            Mensa(id: UUID.init(), title: "Mensa Polyterrasse - Abendessen", mealTime: "11:30 - 13:30", url: URL(string: "https://ethz.ch")!, imageAssetId: "dozentenfoyer", menus: Menu.sampleData),
            Mensa(id: UUID.init(), title: "Uni Mensa", mealTime: "11:00 - 13:30", url: URL(string: "https://uzh.ch")!, imageAssetId: nil, menus: Menu.sampleData)
        ]
    }
}
