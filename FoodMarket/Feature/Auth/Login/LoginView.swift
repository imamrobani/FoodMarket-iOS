//
//  LoginView.swift
//  FoodMarket
//
//  Created by Imam Robani on 17/10/23.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        VStack(spacing: 24) {
            Header(title: "Sign In", description: "Find your best ever meal", isBack: false)
            
            VStack(spacing: 16) {
                // Text Input
                TextInput(label: "Email Address", placeHolder: "Type your email address")
                TextInput(label: "Password", placeHolder: "Type your password", isSecure: true)
                
                // Button
                VStack(spacing: 16 ) {
                    Button {
                        print("SignIn")
                    } label: {
                        FMButton(title: "Sign In")
                    }
                    
                    Button {
                        print("Create New Account")
                    } label: {
                        FMButton(title: "Create New Account", 
                                 textColor: .white,
                                 bgColor: .grayPrimary)
                    }
                }
                .padding(.top, 24)
                
                Spacer()
                
            }
            .padding(24)
            .background(Color.white)
            
        }
        .background(Color.init(hex: "#FAFAFC"))
    }
}

#Preview {
    LoginView()
}
