//
//  RankItemView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import SwiftUI

struct RankItemView: View {
    let rank: PopularRank
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(rank.imageName)
                .resizable()
                .frame(width: 145, height: 145)
                .cornerRadius(8)
                .padding(.bottom, 9)
            
            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 5) {
                    Text(rank.restaurant)
                        .font(.body_r_12)
                        .foregroundStyle(.baeminGray600)
                        .lineLimit(1)
                        
                    Image(.star)
                        .resizable()
                        .frame(width: 11, height: 10)
                    
                    Text("(\(rank.review))")
                        .font(.body_r_12)
                        .foregroundStyle(.baeminGray600)
                    
                    Spacer()
                }
                .frame(width: 145)

                Text(rank.menu)
                    .font(.body_r_14)
                    .foregroundStyle(.baeminBlack)
                
                HStack {
                    Text(rank.discount)
                        .font(.head_b_14)
                        .foregroundStyle(.baeminRed)
                    Text(rank.currentPrice)
                        .font(.head_b_14)
                        .foregroundStyle(.baeminBlack)
                }
                Text(rank.originalPrice)
                    .font(.body_r_14)
                    .foregroundStyle(.baeminGray600)
                    .strikethrough()
                
                Text("최소주문금액 없음")
                    .font(.head_b_13)
                    .foregroundStyle(.baeminPurple)
            }
        }
    }
}
