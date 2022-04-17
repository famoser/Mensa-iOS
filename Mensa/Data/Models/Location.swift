//
//  ETHLocation.swift
//  Mensa
//
//  Created by Florian Moser on 16.04.22.
//

import Foundation

class Location: Identifiable {
    internal init(title: String, mensas: [Mensa]) {
        self.title = title
        self.mensas = mensas
    }
    
    var title: String
    var mensas: [Mensa]
}

struct ETHLocation: Decodable {
    var title: String
    var mensas: [ETHMensa]
}
