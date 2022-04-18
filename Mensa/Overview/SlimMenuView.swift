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
        VStack(alignment: .leading) {
            HStack {
                Text(menu.title).fontWeight(.bold)
                if let firstMenuPrice = menu.price.first {
                    Text("CHF " + firstMenuPrice)
                        .foregroundStyle(.secondary)
                        .font(.footnote)
                }
                Spacer()
            }
            Text(menu.description)
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct SlimMenuView_Previews: PreviewProvider {
    static var menu = Menu.sampleData[0]
    static var previews: some View {
        SlimMenuView(menu: menu)
    }
}
