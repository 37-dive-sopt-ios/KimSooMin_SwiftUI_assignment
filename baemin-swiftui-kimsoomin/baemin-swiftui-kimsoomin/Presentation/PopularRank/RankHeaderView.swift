//
//  RankHeaderView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import SwiftUI

struct RankHeaderView: View {
    var body: some View {
        HStack {
            HStack(spacing: 3) {
                Text("우리 동네 한그릇 인기 랭킹")
                    .font(.title_sb_18)
                    .foregroundStyle(.white)
                
                Image(.infoWhite)
                    .resizable()
                    .frame(width: 16, height: 16)
            }
            Spacer()
            
            HStack(spacing: 4) {
                Text("전체보기")
                    .font(.body_r_14)
                    .foregroundStyle(.white)
                
                Image(.chevronRightWhite)
                    .resizable()
                    .frame(width: 16, height: 16)
            }
        }
        .padding(.top, 24)
        .padding(.bottom, 18)
    }
}
