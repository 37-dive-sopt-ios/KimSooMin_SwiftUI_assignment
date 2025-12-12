//
//  MainView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/9/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, ) {
            LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
                PersonalView()
                    .padding(.horizontal, 16)
                
                Section {
                    EventView()
                    
                    VStack(spacing: 10) {
                        FoodCategoryView()
                        MartView()
                        BannerView()
                        PopularRankView()
                        RecentOrderView()
                        DiscountRestaurantView()
                    }
                } header: {
                    SearchBarView()
                        .padding(.horizontal, 16)
                        .padding(.top, 3)
                }
            }
        }
        .modifier(ScrollClipModifier())
        .background(.baeminBackgroundWhite)
    }
}

struct ScrollClipModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(Rectangle())
    }
}
