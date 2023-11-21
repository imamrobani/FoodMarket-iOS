//
//  ItemValue.swift
//  FoodMarket
//
//  Created by Imam Robani on 20/11/23.
//

import SwiftUI

struct ItemValue: View {
    let name: String
    let desc: String
    let color: Color
    
    init(name: String, desc: String, color: Color = .blackPrimary) {
        self.name = name
        self.desc = desc
        self.color = color
    }
    
    var body: some View {
        HStack {
            Text(name)
                .paragraph14Reguler()
                .foregroundColor(.grayPrimary)
            Spacer()
            Text(desc)
                .paragraph14Reguler()
                .foregroundColor(color)
        }
    }
}

#Preview {
    ItemValue(name: "Cherry Healthy", desc: "IDR 18.900")
}
