//
//  RatingStar.swift
//  FoodMarket
//
//  Created by Imam Robani on 22/11/23.
//

import SwiftUI

struct RatingStar: View {
    let rating: CGFloat
    let maxRating: Int
    
    init(rating: CGFloat, maxRating: Int = 5) {
        self.rating = rating
        self.maxRating = maxRating
    }

    var body: some View {
        let stars = HStack(spacing: 4) {
            ForEach(0..<maxRating, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16 , height: 16)
            }
        }
        
        HStack(spacing: 8) {
            stars.overlay(
                GeometryReader { g in
                    let width = rating / CGFloat(maxRating) * g.size.width
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .frame(width: width)
                            .foregroundColor(.yellow)
                    }
                }
                .mask(stars)
            )
            .foregroundColor(.gray)
            
            Text("\(rating, specifier: "%.2f")")
                .paragraph13Reguler()
                .foregroundColor(.grayPrimary)
                .padding(.top, 4)

        }
    }

}


#Preview {
    RatingStar(rating: 4.5, maxRating: 5)
}
