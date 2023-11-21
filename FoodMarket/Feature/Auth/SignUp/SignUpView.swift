//
//  SignUpView.swift
//  FoodMarket
//
//  Created by Imam Robani on 11/11/23.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack(spacing: 24) {
            Header(title: "Sign Up", description:  "Register and edit")
            
            VStack(spacing: 16) {
                DottedCircle()
                
                TextInput(label: "Full Name", placeHolder: "Type your full name")
                TextInput(label: "Email Address", placeHolder: "Type your email address")
                TextInput(label: "Password", placeHolder: "Type your password")
                
                Button {
                    print("continue")
                } label: {
                    FMButton(title: "Continue")
                }
                .padding(.top, 24)
                
                Spacer()
            }
            .padding(24)
            .background(Color.white)
            
        }
        .background(Color.grayBackground)
    }
}

struct DottedCircle: View {
    let lineWidth: CGFloat = 1.0
    let lineDash: [CGFloat] = [10] // distance between space
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.grayPrimary, style: StrokeStyle(lineWidth: lineWidth, dash: lineDash))
                .frame(width: 110, height: 110)
            
            Text("Add\nPhoto")
                .paragraph14Reguler()
                .foregroundColor(.grayPrimary)
                .multilineTextAlignment(.center)
                .frame(width: 90, height: 90)
                .background(.snowflake)
                .clipShape(.circle)
        }
    }
}

#Preview {
    SignUpView()
}
