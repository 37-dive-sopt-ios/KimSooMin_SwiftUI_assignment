//
//  RecentOrderView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import SwiftUI

struct RecentOrderView: View {
    private let order = RecentOrder.order
    
    let columns = Array(repeating: GridItem(.flexible()), count: 6)
    
    var body: some View {
        VStack(spacing: 0) {
            OrderHeaderView()
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.flexible())], spacing: 10) {
                    ForEach(order, id: \.id) { order in
                        OrderItemView(order: order)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .background(.baeminWhite)
    }
}
