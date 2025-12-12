//
//  MartView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/9/25.
//

import SwiftUI

struct MartView: View {
    private let mart = Mart.mart
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.flexible())], spacing: 20) {
                ForEach(mart, id: \.id) {mart in
                    VStack {
                        Image(mart.imageName)
                            .resizable()
                            .frame(width: 58, height: 58)
                            .cornerRadius(20)
                        
                        Text(mart.name)
                            .font(.body_r_14)
                    }
                }
            }
            .padding(.horizontal, 16)
        }
        .padding(.vertical, 16)
        .background(.baeminWhite)
    }
}
