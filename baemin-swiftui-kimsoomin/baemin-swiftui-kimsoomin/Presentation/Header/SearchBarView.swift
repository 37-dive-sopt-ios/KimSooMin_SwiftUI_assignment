//
//  SearchBarView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/12/25.
//

import SwiftUI

struct SearchBarView: View {
    @State var searchText: String = ""
    @FocusState private var isFocused: Bool
    
    var body: some View {
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
    }
}
