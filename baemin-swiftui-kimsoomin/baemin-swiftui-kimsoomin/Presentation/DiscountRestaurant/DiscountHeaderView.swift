//
//  DiscountHeaderView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import SwiftUI

struct DiscountHeaderView: View {
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading) {
                HStack(spacing: 3) {
                    Text("무조건 할인하는 가게")
                        .font(.title_sb_18)
                        .lineLimit(1)
                        
                    Image(.info)
                        .resizable()
                        .frame(width: 16, height: 16)
                }
                Text("2천원 이상 또는 15% 이상 할인중")
                    .font(.body_r_14)
                    .foregroundStyle(.baeminGray300)
                    .lineLimit(1)
            }
            Spacer()
            
            Image(.discountImg)
                .resizable()
                .frame(width: 66, height: 59)
            
        }
        .padding(.top, 20)
        .padding(.bottom, 16)
    }
}
