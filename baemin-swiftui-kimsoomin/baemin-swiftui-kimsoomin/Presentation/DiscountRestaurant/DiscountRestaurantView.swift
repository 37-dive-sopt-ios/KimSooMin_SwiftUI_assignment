//
//  DiscountRestaurantView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import SwiftUI

struct DiscountRestaurantView: View {
    private let order = RecentOrder.discount
    
    var body: some View {
        VStack(spacing: 0) {
            DiscountHeaderView()
                .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.flexible())], spacing: 10) {
                    ForEach(order, id: \.id) { discount in
                        DiscountItemView(order: discount)
                    }
                }
                .padding(.horizontal, 16)
            }
            .padding(.bottom, 20)
            
            HStack(spacing: 0) {
                Text("할인하는 가게")
                    .font(.head_b_14)
                
                Text("더보기")
                    .font(.body_r_14)
                    .padding(.trailing, 4)
                
                Image(.chevronRight)
                    .resizable()
                    .frame(width: 12, height: 12)
            }.background {
                RoundedRectangle(cornerRadius: 50)
                    .stroke(.baeminGray200, lineWidth: 1)
                    .frame(width: 152, height: 34)
            }
            .padding(.bottom, 10)
        }
        .background(.baeminWhite)
    }
}
