//
//  OrderSummaryView.swift
//  FoodMarket
//
//  Created by Imam Robani on 20/11/23.
//

import SwiftUI

struct OrderSummaryView: View {
    var body: some View {
        VStack(spacing: 24) {
            Header(title: "Payment", description: "You deserve better meal", isBack: true)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Item Ordered")
                        .paragraph14Reguler()
                    HStack() {
                        FoodItem(image: .food1, name: "Cherry Healthy", description: "IDR 37.900")
                        Spacer()
                        Text("14 items")
                            .paragraph13Reguler()
                            .foregroundColor(.grayPrimary)
                    }
                    .padding(.vertical, 8)
                    
                    Text("Details Transaction")
                        .paragraph14Reguler()
                    ItemValue(name: "Cherry healthy", desc: "IDR 184.390")
                    ItemValue(name: "Driver", desc: "IDR 50.000")
                    ItemValue(name: "Tax 10%", desc: "IDR 18.390")
                    ItemValue(name: "Total Price", desc: "IDR 209.390", color: .aloha)
                    
                }
                .modifier(SectionCardOrderStyle())
                .padding(.vertical, 8)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Deliver to: ")
                        .paragraph14Reguler()
                    ItemValue(name: "Name", desc: "Angga Risky")
                    ItemValue(name: "Phone No.", desc: "0822 0819 9688")
                    ItemValue(name: "Address", desc: "Setra Duta Palima")
                    ItemValue(name: "House No.", desc: "A5 Hook")
                    ItemValue(name: "City", desc: "Bandung")
                }
                .modifier(SectionCardOrderStyle())
                
                Button {
                    print("Checkout Now")
                } label: {
                    FMButton(title: "Checkout Now")
                }
                .padding( 24)
            }

        }
        .background(.grayBackground)
    }
}

#Preview {
    OrderSummaryView()
}
