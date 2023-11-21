//
//  Header.swift
//  FoodMarket
//
//  Created by Imam Robani on 13/11/23.
//

import SwiftUI

struct Header: View {
    
    let title: String
    let description: String
    let isBack: Bool
    
    init(title: String, description: String, isBack: Bool = true) {
        self.title = title
        self.description = description
        self.isBack = isBack
    }
    
    var body: some View {
        HStack(spacing: 24) {
            
            if isBack {
                Button {
                    print("Back")
                } label: {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                        .foregroundColor(.black)
                }
            }
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .headline22Medium()
                Text(description)
                    .paragraph14Reguler()
                    .foregroundColor(.grayPrimary)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(24)
        .background(Color.white)
        
    }
}

#Preview {
    Header(title: "Sign In", description: "Find your best ever meal")
}
