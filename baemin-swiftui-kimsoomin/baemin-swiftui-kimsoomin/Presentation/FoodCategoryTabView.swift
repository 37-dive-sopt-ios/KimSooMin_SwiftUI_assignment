//
//  FoodCategoryTabView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import SwiftUI

struct FoodCategoryTabView: View {
    @State private var selectedCategory: String = "음식배달"
    private let tabCategories = ["음식배달", "픽업", "장보기·쇼핑", "선물하기", "혜택모아보기"]
    private let rectangleWidths: [CGFloat] = [65, 32, 80, 64, 90]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(Array(tabCategories.enumerated()), id: \.element) { index, category in
                    let currentWidth = rectangleWidths[index]
                    
                    VStack(spacing: 13) {
                        Button {
                            selectedCategory = category
                        } label: {
                            Text(category)
                                .font(.head_b_18)
                                .foregroundStyle(category == selectedCategory ? .baeminBlack : .baeminGray300)
                        }
                        
                        if category == selectedCategory {
                            Rectangle()
                                .foregroundColor(.baeminBlack)
                                .frame(width: currentWidth, height: 3)
                        } else {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: currentWidth, height: 3)
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
        }
        .padding(.top, 16)
    }
}
