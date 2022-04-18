//
//  SlimMensaView.swift
//  Mensa
//
//  Created by Florian Moser on 18.04.22.
//

import SwiftUI

struct SlimMensaView: View {
    var mensa: Mensa
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            MensaHeader(mensa: mensa)
            Spacer()
            Spacer()
            ForEach(mensa.menus) { menu in
                SlimMenuView(menu: menu)
                Spacer()
            }
        }
    }
}

struct MensaHeader: View {
    var mensa: Mensa
    var body: some View {
        Text(mensa.title).font(.title) +
        Text("  ") +
        Text(mensa.mealTime).foregroundColor(Color.secondary)
    }
}

struct SlimMensaView_Previews: PreviewProvider {
    static var mensa = Mensa.generateSampleData()[0]
    static var previews: some View {
        SlimMensaView(mensa: mensa)
    }
}
