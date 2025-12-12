//
//  ChipView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/12/25.
//

import SwiftUI

struct ChipView: View {
    let text: String
    let hasBorder: Bool
    
    var body: some View {
        HStack(spacing: 2) {
            if hasBorder {
                Image(.baminClub)
                    .resizable()
                    .frame(width: 10, height: 10)
            }
            Text(text)
                .font(.title_sb_10)
                .foregroundStyle(hasBorder ? .baeminMint600 : .baeminGray800)
        }
        .padding(.horizontal, 4)
        .frame(height: 16)
        .background {
            RoundedRectangle(cornerRadius: 4)
                .stroke(hasBorder ? .baeminMint600 : .clear, lineWidth: hasBorder ? 1 : 0)
                .background(RoundedRectangle(cornerRadius: 4).foregroundColor(
                    hasBorder ? .baeminMint50010 : .baeminBackgroundWhite
                ))
        }
    }
}
