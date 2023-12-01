//
//  OrderModifiers.swift
//  FoodMarket
//
//  Created by Imam Robani on 21/11/23.
//

import SwiftUI

struct SectionCardOrderStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 24)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .leading )
            .background(.white)
//            .padding(.vertical, 8)
    }
}

extension View {
    func sectionCardOrderStyle() -> some View {
        self.modifier(SectionCardOrderStyle())
    }
}
