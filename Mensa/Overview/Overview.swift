//
//  Overview.swift
//  Mensa
//
//  Created by Florian Moser on 16.04.22.
//

import SwiftUI

struct Overview: View {
    @State var mensas: [Mensa]
    var body: some View {
        NavigationView {
            List {
                ForEach(mensas) { mensa in
                    Section(header: Text(mensa.title)) {
                        ForEach(mensa.menus){ menu in
                            NavigationLink(destination: MensaView(mensa: mensa)) {
                                SlimMenuView(menu: menu)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Zentrum")
        }
    }
}

struct Overview_Previews: PreviewProvider {
    static var mensas = Mensa.generateSampleData()
    static var previews: some View {
        Overview(mensas: mensas)
    }
}
