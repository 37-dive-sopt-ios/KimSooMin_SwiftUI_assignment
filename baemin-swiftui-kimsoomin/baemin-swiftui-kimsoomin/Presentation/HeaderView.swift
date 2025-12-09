//
//  HeaderView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/9/25.
//

import SwiftUI

struct HeaderView: View {
    @State var searchText: String = ""
    @FocusState private var isFocused: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                HStack(spacing: 3) {
                    Text("우리집")
                        .font(.head_b_16)
                    Image(.polygon)
                        .resizable()
                        .frame(width: 8, height: 5)
                }
                
                Spacer()
                
                HStack(spacing: 12) {
                    Image(.baeminDiscount)
                        .resizable()
                        .frame(width: 24, height: 24)
                    
                    Image(.alarm)
                        .resizable()
                        .frame(width: 24, height: 24)
                    
                    Image(.cart)
                        .resizable()
                        .frame(width: 24, height: 24)
                }
            }
            .padding(.bottom, 10)
            
            ZStack {
                TextField("찾아라! 맛있는 음식과 맛집", text: $searchText)
                    .focused($isFocused)
                    .font(.body_r_14)
                    .padding(.horizontal, 17)
                    .padding(.vertical, 13)
                    .foregroundStyle(isFocused ? .baeminBlack : .baeminGray300)
                
                HStack {
                    Spacer()
                    Image(.search)
                        .foregroundColor(.baeminGray700)
                        .frame(width: 24, height: 24)
                }
                .padding(.trailing, 17)
                
            }
            .background(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(.baeminBlack, lineWidth: 1)
            )
            .frame(height: 40)
            .padding(.bottom, 24)
            
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
        }
    }
}
