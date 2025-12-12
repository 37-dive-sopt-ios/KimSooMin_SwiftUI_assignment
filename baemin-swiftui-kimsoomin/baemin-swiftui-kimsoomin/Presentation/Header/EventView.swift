//
//  EventView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/12/25.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.baeminBackgroundWhite, .gradient1]),
                                     startPoint: .top, endPoint: .bottom))
                .frame(width: .infinity, height: 67)
            
            VStack(alignment: .leading, spacing: 0) {
                Image(.bMartImg)
                    .resizable()
                    .frame(width: 50, height: 16)
                    .padding(.bottom, 6)
                
                HStack(spacing: 2) {
                    Text("전상품 쿠폰팩 + 60%특가")
                        .font(.head_b_16)
                    
                    Image(.chevronRight)
                        .resizable()
                        .frame(width: 12, height: 12)
                }
                .padding(.bottom, 27)
            }
            .padding(.leading, 16)
        }
    }
}
