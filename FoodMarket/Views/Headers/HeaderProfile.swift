//
//  HeaderProfile.swift
//  FoodMarket
//
//  Created by Imam Robani on 21/11/23.
//

import SwiftUI

struct HeaderProfile: View {
    
    let title: String
    let description: String
    let image: UIImage
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .headline22Medium()
                Text(description)
                    .paragraph14Reguler()
                    .foregroundColor(.grayPrimary)
            }
            
            Spacer()
            
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .cornerRadius(8)
        }
        .padding(24)
        .background(Color.white)
    }
}

#Preview {
    HeaderProfile(title: "FoodMarket", description: "Let’s get some foods", image: .profile)
}
