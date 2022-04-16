//
//  Mensa.swift
//  Mensa
//
//  Created by Florian Moser on 17.01.22.
//

import Foundation

class Mensa: Identifiable, Decodable {
    internal init(id: UUID, title: String, url: URL, mealTime: String, imagePath: String? = nil, menus: [Menu]) {
        self.id = id
        self.title = title
        self.url = url
        self.mealTime = mealTime
        self.imagePath = imagePath
        self.menus = menus
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try values.decode(UUID.self, forKey: .id)
        self.title = try values.decode(String.self, forKey: .title)
        self.mealTime = try values.decode(String.self, forKey: .mealTime)
        
        let infoUrlSlug = try values.decode(String.self, forKey: .infoUrlSlug)
        self.url = URL(string: "https://ethz.ch/" + infoUrlSlug)!
        
        self.menus = Menu.sampleData
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case mealTime
        case idSlug
        case timeSlug
        case infoUrlSlug
    }
    
    var id: UUID
    var title: String
    var mealTime: String
    var url: URL
    var imagePath: String?
    var menus: [Menu]
    
    static let sampleData: [Mensa] =
    [
        Mensa(id: UUID.init(), title: "Dozentenfoyer", url: URL(string: "https://ethz.ch")!, mealTime: "11:30 - 13:30", imagePath: nil, menus: Menu.sampleData),
        Mensa(id: UUID.init(), title: "Uni Mensa", url: URL(string: "https://uzh.ch")!, mealTime: "11:00 - 13:30", imagePath: nil, menus: Menu.sampleData)
    ]
}
