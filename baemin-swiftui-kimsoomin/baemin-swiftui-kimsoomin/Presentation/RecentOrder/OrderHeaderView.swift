//
//  OrderHeaderView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import SwiftUI

struct OrderHeaderView: View {
    var body: some View {
        HStack {
            HStack(spacing: 3) {
                Text("최근에 주문했어요")
                    .font(.title_sb_18)
                
                Image(.info)
                    .resizable()
                    .frame(width: 16, height: 16)
            }
            Spacer()
            
            HStack(spacing: 4) {
                Text("전체보기")
                    .font(.body_r_14)
                
                Image(.chevronRight)
                    .resizable()
                    .frame(width: 16, height: 16)
            }
        }
        .padding(.top, 24)
        .padding(.horizontal, 16)
        .padding(.bottom, 16)
    }
}
