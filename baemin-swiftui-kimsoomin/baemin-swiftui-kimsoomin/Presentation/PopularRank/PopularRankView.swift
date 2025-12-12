//
//  PopularRankView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import SwiftUI

struct PopularRankView: View {
    private let rank = PopularRank.rank
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.gradient2, .white]),
                                     startPoint: .top, endPoint: .bottom))
                .frame(width: .infinity, height: 75)
            
            VStack(spacing: 0) {
                RankHeaderView()
                    .padding(.horizontal, 16)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: [GridItem(.flexible())], spacing: 10) {
                        ForEach(rank, id: \.id) { item in
                            RankItemView(rank: item)
                        }
                    }
                    .padding(.horizontal, 16)
                }
                .padding(.bottom, 20)
                .frame(height: 280)
            }
        }
        .background(.baeminWhite)
    }
}
