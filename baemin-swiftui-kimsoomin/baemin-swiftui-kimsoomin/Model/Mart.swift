//
//  MartCategory.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import Foundation

struct Mart: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageName: String
    
    static let mart: [Mart] = [
        Mart(name: "B마트", imageName: "mart1"),
        Mart(name: "CU", imageName: "mart3"),
        Mart(name: "이마트슈퍼", imageName: "mart2"),
        Mart(name: "홈플러스", imageName: "mart5"),
        Mart(name: "GS25", imageName: "mart6"),
        Mart(name: "세븐일레븐", imageName: "mart4")
    ]
}

