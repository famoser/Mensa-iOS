//
//  MensaView.swift
//  Mensa
//
//  Created by Florian Moser on 17.01.22.
//

import SwiftUI

struct MensaView: View {
    let mensa: Mensa
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            if let imageAssetId = mensa.imageAssetId {
                Image(imageAssetId)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            List {
                ForEach(mensa.menus){ menu in
                    MenuView(menu: menu)
                }
            }
        }
        .navigationTitle(mensa.title)
    }
}

struct MensaView_Previews: PreviewProvider {
    static var mensa = Mensa.generateSampleData()[0]
    static var previews: some View {
        MensaView(mensa: mensa)
    }
}
