//
//  DiscountItemView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import SwiftUI

struct DiscountItemView: View {
    let order: RecentOrder
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(order.imageName)
                .resizable()
                .frame(width: 188, height: 126)
                .cornerRadius(8)
                .padding(.bottom, 9)
            
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 7) {
                    HStack(spacing: 1) {
                        Text(order.restaurant)
                            .font(.head_b_14)
                            .lineLimit(1)
                        
                        Image(.star)
                            .resizable()
                            .frame(width: 11, height: 10)
                        
                        Text("\(order.rate)")
                            .font(.head_b_14)
                        
                        Text("(\(order.review))")
                            .font(.body_r_12)
                            .foregroundStyle(.baeminGray600)
                        
                        Spacer()
                    }
                    .frame(width: 188)
                    
                    HStack(spacing: 0) {
                        Image(.baeminMoney)
                            .resizable()
                            .frame(width: 13, height: 13)
                            .padding(.trailing, 2)
                        
                        Text("\(order.deliveryTime)")
                            .font(.body_r_12)
                            .padding(.trailing, 6)
                        
                        Image(.baminClub)
                            .resizable()
                            .frame(width: 12, height: 12)
                            .padding(.trailing, 1)
                        
                        Text("무료배달")
                            .font(.head_b_13)
                            .foregroundStyle(.baeminPurple)
                    }
                    
                    HStack(spacing: 8) {
                        ChipView(text: "배민클럽", hasBorder: true)
                        ChipView(text: "소비쿠폰", hasBorder: false)
                        ChipView(text: "픽업가능", hasBorder: false)
                    }
                    .padding(.leading, 4)
                    
                    ChipView(text: "위생인증", hasBorder: false)
                    .padding(.leading, 4)
                }
            }
        }
    }
}
