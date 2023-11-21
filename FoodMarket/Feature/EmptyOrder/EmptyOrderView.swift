//
//  EmptyOrder.swift
//  FoodMarket
//
//  Created by Imam Robani on 11/11/23.
//

import SwiftUI

struct EmptyOrderView: View {
    var body: some View {
        VStack {
            Image("Order-Empty")
            VStack(spacing: 8) {
                Text("Ouch! Hungry")
                    .headline20Regular()
                Text("Seems like you have not\nordered any food yet")
                    .paragraph14Reguler()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.grayPrimary)
            }
            .padding(.bottom, 30)
            
            Button {
                print("Find Foods")
            } label: {
                FMButton(title: "Order Other Foods")
            }
        }
        .padding(80)
    }
}

#Preview {
    EmptyOrderView()
}
