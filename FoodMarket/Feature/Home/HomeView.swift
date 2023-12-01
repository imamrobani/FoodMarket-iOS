//
//  HomeView.swift
//  FoodMarket
//
//  Created by Imam Robani on 21/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        @State var currentTab: Int = 0
        
        VStack {
            HeaderProfile(title: "FoodMarket", description: "Let’s get some foods", image: .profile)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 24) {
                    ForEach(MockData.items) { item in
                        FoodCard(name: item.name, image: item.image, rating: item.rating)
                            .scrollTransition { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 1.0 : 0.7)
                                    .scaleEffect(x: phase.isIdentity ? 1.0 : 0.8,
                                                 y: phase.isIdentity ? 1.0 : 0.8)
                            }
                    }
                }
                .scrollTargetLayout()
            }
            .contentMargins(24, for: .scrollContent)
            .background(Color.grayBackground)
            
            VStack {
                TabBarView()
                ScrollView {
                    LazyVStack(spacing: 24) {
                        ForEach(MockData.items) { item in
                            HStack {
                                FoodItem(image: item.image, name: item.name, description: "IDR 189.00")
                                Spacer()
                                RatingStar(rating: item.rating)
                            }
                        }
                    }
                    .padding(24)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .background(Color.white)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}


struct TabBarView: View {
    @State var currentTab: Int = 0
    @Namespace var namespace
    
    var tabBarOptions: [String] = ["New Taste", "Popular", "Recommeended"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(Array(zip(tabBarOptions.indices,
                                  tabBarOptions)), id: \.0) { index, name in
                    TabBarItem(currentTab: $currentTab,
                               namespace: namespace.self,
                               tabBarItemName: name,
                               tab: index)
                }
            }
            .padding([.horizontal, .top], 16)
        }
        .background(Color.white)
        .shadow(radius: 0.5, y: 0.5)
    }
}

struct TabBarItem: View {
    @Binding var currentTab: Int
    let namespace: Namespace.ID
    
    var tabBarItemName: String
    var tab: Int
    
    var body: some View {
        Button {
            currentTab = tab
        } label: {
            VStack {
                Text(tabBarItemName)
                    .paragraph14Reguler()
                    .foregroundColor(currentTab == tab ?  .black : .grayPrimary)
                if currentTab == tab {
                    Color.black
                        .frame(width: 40, height: 3)
                        .cornerRadius(4)
                        .matchedGeometryEffect(id: "underline",
                                               in: namespace,
                                               properties: .frame)
                } else {
                    Color.clear
                        .frame(width: 40, height: 2)
                        .cornerRadius(4)
                }
            }
        }
    }
}


struct ItemFood: Identifiable {
    let id = UUID()
    let name: String
    let image: UIImage
    let rating: CGFloat
}

struct MockData {
    static var items = [ItemFood(name: "Chery Heahty", image: .foodLarge1, rating: 4.5),
                        ItemFood(name: "Tamago Burger", image: .foodLarge2, rating: 4.7),
                        ItemFood(name: "Sop Iga Sapi", image: .food1, rating: 3.9),
                        ItemFood(name: "Sate Padang", image: .food2, rating: 4.4),
                        ItemFood(name: "Coffe coffee", image: .food3, rating: 5.0),
                        ItemFood(name: "Ice Cream coco", image: .food4, rating: 4.3),
                        ItemFood(name: "Bawang Putih", image: .food5, rating: 4.3),]
}

