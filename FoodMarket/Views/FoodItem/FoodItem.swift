//
//  FoodItem.swift
//  FoodMarket
//
//  Created by Imam Robani on 20/11/23.
//

import SwiftUI

struct FoodItem: View {
    
    let image: UIImage;
    let name: String;
    let description: String;
    
    var body: some View {
        HStack(spacing: 16) {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(name)
                    .paragraph16Reguler()
                Text(description)
                    .paragraph14Reguler()
                    .foregroundColor(.grayPrimary)
            }
        }
    }
}

#Preview {
    FoodItem(image: .food1 , name: "Cherry Healthy", description: "IDR 289.000")
}
