//
//  SuccessSignUpView.swift
//  FoodMarket
//
//  Created by Imam Robani on 12/11/23.
//

import SwiftUI

struct SuccessSignUpView: View {
    var body: some View {
        VStack {
            Image("Success-Signup")
            VStack(spacing: 8) {
                Text("Yeay! Completed")
                    .headline20Regular()
                Text("Now you are able to order\nsome foods as a self-reward")
                    .paragraph14Reguler()
                    .foregroundColor(.grayPrimary)
                    .multilineTextAlignment(.center)
            }
            .padding(.bottom, 30)
            
            Button {
                print("Find Foods")
            } label: {
                FMButton(title: "Find Foods")
            }
        }
        .padding(80)
    }
}

#Preview {
    SuccessSignUpView()
}
