//
//  TextInput.swift
//  FoodMarket
//
//  Created by Imam Robani on 18/11/23.
//

import SwiftUI

struct TextInput: View {
    
    let label: String
    let placeHolder: String
    let isSecure: Bool
    
    init(label: String, placeHolder: String, isSecure: Bool = false) {
        self.label = label
        self.placeHolder = placeHolder
        self.isSecure = isSecure
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .paragraph16Reguler()
            Group {
                if !isSecure {
                    TextField(placeHolder, text: .constant(""))
                } else {
                    SecureField(placeHolder, text: .constant(""))
                }
            }
            .padding(12)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.black, lineWidth:1)
            )
        }
    }
}

#Preview {
    TextInput(label: "Email", placeHolder: "Type your email")
        .padding(24)
}
