//
//  SignUpAddressView.swift
//  FoodMarket
//
//  Created by Imam Robani on 18/11/23.
//

import SwiftUI

struct SignUpAddressView: View {
    var body: some View {
        VStack(spacing: 24) {
            Header(title: "Address", description: "Make sure it’s valid", isBack: false)
            
            VStack(spacing: 16) {
                TextInput(label: "Phone No.", placeHolder: "Type your phone number")
                TextInput(label: "Address", placeHolder: "Type your address")
                TextInput(label: "House No.", placeHolder: "Type your house number")
                TextInput(label: "City", placeHolder: "Select your city")
                
                Button {
                    print("Sign Up Now")
                } label: {
                    FMButton(title: "Sign Up Now")
                }
                .padding(.top, 24)
                
                Spacer()
            }
            .padding(24)
            .background(.white)
            
        }
        .background(.grayBackground)
    }
}

#Preview {
    SignUpAddressView()
}
