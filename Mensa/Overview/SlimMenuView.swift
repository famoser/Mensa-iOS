//
//  SlimMenuView.swift
//  Mensa
//
//  Created by Florian Moser on 16.04.22.
//

import SwiftUI

struct SlimMenuView: View {
    var menu: Menu
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(menu.description)
                    .lineLimit(2)
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(menu.title).fontWeight(.bold)
                Text(menu.price.first ?? "")
            }
        }
    }
}

struct SlimMenuView_Previews: PreviewProvider {
    static var menu = Menu.sampleData[0]
    static var previews: some View {
        SlimMenuView(menu: menu)
    }
}
