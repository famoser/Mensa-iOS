//
//  MenuView.swift
//  Mensa
//
//  Created by Florian Moser on 17.01.22.
//

import SwiftUI

struct MenuView: View {
    var menu: Menu
    var body: some View {
        VStack(alignment: .leading) {
            Text(menu.title).fontWeight(.bold)
            Text(menu.price.joined(separator: " / "))
            Spacer()
            Text(menu.description)
            if menu.allergens != nil {
                Spacer()
                Text(menu.allergens!).foregroundStyle(.secondary)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var menu = Menu.sampleData[0]
    static var previews: some View {
        MenuView(menu: menu)
    }
}
