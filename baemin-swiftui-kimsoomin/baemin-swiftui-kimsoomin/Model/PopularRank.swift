//
//  PopularRank.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import Foundation

struct PopularRank: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let restaurant: String
    let rate: Double
    let review: String
    let menu: String
    let discount: String
    let currentPrice: String
    let originalPrice: String
    
    static let rank: [PopularRank] = [
        PopularRank(imageName: "food1", restaurant: "샐러리아 샐러드&포케 화양건대점", rate: 5.0, review: "1,973", menu: "훈제오리 포케", discount: "25%", currentPrice: "12,000원", originalPrice: "16,000원"),
        PopularRank(imageName: "food2", restaurant: "짜글이미식회 광진점", rate: 4.0, review: "230", menu: "[고추장] 묵은지짜글이", discount: "25%", currentPrice: "22,000원", originalPrice: "26,000원"),
        PopularRank(imageName: "food3", restaurant: "니들이 곱도리탕 맛을 알어 군자점", rate: 5.0, review: "2,235", menu: "[가성비] 1인 닭도리탕", discount: "30%", currentPrice: "19,000원", originalPrice: "21,000원"),
        PopularRank(imageName: "food1", restaurant: "샐러리아 샐러드&포케 화양건대점", rate: 5.0, review: "1,973", menu: "훈제오리 포케", discount: "25%", currentPrice: "12,000원", originalPrice: "16,000원"),
        PopularRank(imageName: "food2", restaurant: "짜글이미식회 광진점", rate: 4.0, review: "230", menu: "[고추장] 묵은지짜글이", discount: "25%", currentPrice: "22,000원", originalPrice: "26,000원"),
        PopularRank(imageName: "food3", restaurant: "니들이 곱도리탕 맛을 알어 군자점", rate: 5.0, review: "2,235", menu: "[가성비] 1인 닭도리탕", discount: "30%", currentPrice: "19,000원", originalPrice: "21,000원")
    ]
}
