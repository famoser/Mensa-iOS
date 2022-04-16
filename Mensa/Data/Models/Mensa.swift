//
//  Mensa.swift
//  Mensa
//
//  Created by Florian Moser on 17.01.22.
//

import Foundation

class Mensa: Identifiable {
    internal init(id: UUID, title: String, url: URL, mealTime: String, imagePath: String? = nil, menus: [Menu]) {
        self.id = id
        self.title = title
        self.url = url
        self.mealTime = mealTime
        self.imagePath = imagePath
        self.menus = menus
    }
    
    var id: UUID
    var title: String
    var url: URL
    var mealTime: String
    var imagePath: String?
    var menus: [Menu]
    
    static let sampleData: [Mensa] =
    [
        Mensa(id: UUID.init(), title: "Polymensa", url: URL(string: "https://ethz.ch")!, mealTime: "11:30 - 13:30", imagePath: nil, menus: Menu.sampleData),
        Mensa(id: UUID.init(), title: "Uni Mensa", url: URL(string: "https://uzh.ch")!, mealTime: "11:00 - 13:30", imagePath: nil, menus: Menu.sampleData)
    ]
}
