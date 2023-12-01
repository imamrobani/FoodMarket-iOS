//
//  ContentView.swift
//  FoodMarket
//
//  Created by Imam Robani on 17/10/23.
//

import SwiftUI

struct SplashView: View {
        
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            Image("Logo")
            Text("FoodMarket")
                .paragraph32Medium()
                .foregroundColor(.blackPrimary)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Color.yellow)
    }
}

#Preview {
    SplashView()
}
