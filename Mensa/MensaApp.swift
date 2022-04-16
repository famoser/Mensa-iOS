//
//  MensaApp.swift
//  Mensa
//
//  Created by Florian Moser on 30.12.21.
//

import SwiftUI

@main
struct MensaApp: App {
    var body: some Scene {
        WindowGroup {
            Overview(mensas: Mensa.sampleData)
        }
    }
}
