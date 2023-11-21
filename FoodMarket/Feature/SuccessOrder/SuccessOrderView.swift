//
//  SuccessOrderView.swift
//  FoodMarket
//
//  Created by Imam Robani on 06/11/23.
//

import SwiftUI

struct SuccessOrderView: View {
    var body: some View {
        VStack(spacing: 30) {
            Image("Success-Order")
            VStack(spacing: 8) {
                Text("You’ve Made Order")
                    .headline20Regular()
                Text("Just stay at home while we are\npreparing your best foods")
                    .paragraph14Reguler()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.grayPrimary)
            }
            VStack(spacing: 16){
                Button {
                    print("SignIn")
                } label: {
                    FMButton(title: "Order Other Foods")
                }
                
                Button {
                    print("hai")
                } label: {
                    FMButton(title: "View My Order",
                             textColor: .white,
                             bgColor: .grayPrimary)
                }
            }
        }
        .padding(80)
    }
}

#Preview {
    SuccessOrderView()
}
