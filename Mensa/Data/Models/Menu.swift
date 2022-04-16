//
//  Menu.swift
//  Mensa
//
//  Created by Florian Moser on 17.01.22.
//

import Foundation

class Menu: Identifiable {
    internal init(title: String, description: String, price: [String], allergens: String? = nil) {
        self.title = title
        self.description = description
        self.price = price
        self.allergens = allergens
    }
    
    var title: String
    var description: String
    var price: [String]
    var allergens: String?
}

extension Menu {
    static let sampleData: [Menu] =
    [
        Menu(title: "STREET", description: "Wesley's Special\nEnte an Ananassauce\nReis", price: ["2.50", "7.00", "8.90"], allergens: "Erdnüsse"),
        Menu(title: "GARDEN", description: "Grillierter Halloumi Käse\nGriechischer Salat\nFocacciabrot", price: ["2.50", "7.00", "8.90"], allergens: "Gluten, Milch/Laktase, Sulfite"),
        Menu(title: "HOME", description: "Zarte Pouletstreifen\nSweet Stroganoff Sauce\nApfelmuss oder Salat", price: ["2.50", "7.00", "8.90"], allergens: nil)
    ]
}
