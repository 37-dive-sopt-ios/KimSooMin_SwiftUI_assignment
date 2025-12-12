//
//  FoodCategoryView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/9/25.
//

import SwiftUI

struct FoodCategoryView: View {
    private let foodCategories = FoodCategory.foodCategories
    let columns = Array(repeating: GridItem(.flexible()), count: 5)
    
    var body: some View {
        VStack(spacing: 0) {
            FoodCategoryTabView()
            
            Divider()
                .foregroundStyle(.baeminBackgroundWhite)
                .frame(height: 1)
                .padding(.bottom, 13)
            
            LazyVGrid(columns: columns,  spacing: 20) {
                ForEach(foodCategories, id: \.id) {category in
                    VStack {
                        Image(category.imageName)
                            .resizable()
                            .frame(width: 58, height: 58)
                            .cornerRadius(20)
                            
                        Text(category.name)
                            .font(.body_r_14)
                    }
                }
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 21)
            
            Divider()
                .foregroundStyle(.baeminBackgroundWhite)
                .frame(height: 1)
            
            HStack(spacing: 0) {
                Text("음식배달")
                    .font(.head_b_14)
                Text("에서 더보기")
                    .font(.body_r_14)
                
                Image(.chevronRight)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                    .padding(.vertical, 10)
            }
        }
        .background(.baeminWhite)
    }
}
