//
//  FMButton.swift
//  FoodMarket
//
//  Created by Imam Robani on 06/11/23.
//

import SwiftUI

struct FMButton: View {
    
    let title: String
    let textColor: Color
    let bgColor: Color
    
    init(title: String, textColor: Color = .blackPrimary, bgColor: Color = .brandPrimary) {
        self.title = title
        self.textColor = textColor
        self.bgColor = bgColor
    }
    
    var body: some View {
        Text(title)
            .paragraph14Medium()
            .foregroundColor(textColor)
            .padding(12)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(bgColor)
            .cornerRadius(8)
    }
}

#Preview {
    FMButton(title: "Test Button")
}
