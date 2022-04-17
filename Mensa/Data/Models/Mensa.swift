//
//  Mensa.swift
//  Mensa
//
//  Created by Florian Moser on 17.01.22.
//

import Foundation

class Mensa: Identifiable {
    internal init(id: UUID, title: String, mealTime: String, url: URL, imageAssetId: String? = nil, menus: [Menu]) {
        self.id = id
        self.title = title
        self.mealTime = mealTime
        self.url = url
        self.imageAssetId = imageAssetId
        self.menus = menus
    }
    
    var id: UUID
    var title: String
    var mealTime: String
    var url: URL
    var imageAssetId: String?
    var menus: [Menu]
}

struct ETHMensa: Decodable {
    func createMensa() -> Mensa {
        let id = UUID.init(uuidString: self.id)!
        let url = URL(string: "https://ethz.ch/" + self.infoUrlSlug)!
        
        let suffixStart = infoUrlSlug.index(after: infoUrlSlug.lastIndex(of: "/")!)
        let imageAssetId = String(infoUrlSlug[suffixStart...])
        
        return Mensa(id: id, title: self.title, mealTime: self.mealTime, url: url, imageAssetId: imageAssetId, menus: Menu.sampleData)
    }
    
    var id: String
    var title: String
    var mealTime: String
    var idSlug: Int
    var timeSlug: String
    var infoUrlSlug: String
}
