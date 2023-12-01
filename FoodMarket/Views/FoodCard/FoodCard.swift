//
//  FoodCard.swift
//  FoodMarket
//
//  Created by Imam Robani on 23/11/23.
//

import SwiftUI

struct FoodCard: View {
    
    let name: String
    let image: UIImage
    let rating: CGFloat
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(uiImage: image)
                .resizable()
//                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 140)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .label16Regular()
                RatingStar(rating: rating)
            }
            .padding(8)
        }
        .frame(width: 200)
        .background(.white)
        .cornerRadius(8)
        .shadow(radius: 2)        
    }
}

#Preview {
    FoodCard(name: "Cherry Healthy", image: .foodLarge1, rating: 5)
}
