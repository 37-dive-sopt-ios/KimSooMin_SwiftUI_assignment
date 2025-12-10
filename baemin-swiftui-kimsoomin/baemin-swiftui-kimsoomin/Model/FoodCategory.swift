//
//  FoodCategory.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/9/25.
//

import Foundation

struct FoodCategory: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageName: String
    
    static let foodCategories: [FoodCategory] = [
        FoodCategory(name: "한그릇", imageName: "category1"),
        FoodCategory(name: "쿠폰", imageName: "category2"),
        FoodCategory(name: "카페·디저트", imageName: "category3"),
        FoodCategory(name: "햄버거", imageName: "category4"),
        FoodCategory(name: "한식", imageName: "category5"),
        FoodCategory(name: "중식", imageName: "category6"),
        FoodCategory(name: "분식", imageName: "category7"),
        FoodCategory(name: "찜·탕", imageName: "category8"),
        FoodCategory(name: "일식", imageName: "category9"),
        FoodCategory(name: "픽업", imageName: "category10")
    ]
}
