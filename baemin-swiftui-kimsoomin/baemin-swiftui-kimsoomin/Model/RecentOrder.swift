//
//  RecentOrder.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/11/25.
//

import Foundation

struct RecentOrder: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let restaurant: String
    let rate: String
    let review: String
    let deliveryTime: String
    
    static let order: [RecentOrder] = [
        RecentOrder(imageName: "foodWide1", restaurant: "ASAP PIZZA 구로디지털단지", rate: "5.0", review: "231", deliveryTime: "31~46분"),
        RecentOrder(imageName: "foodWide2", restaurant: "레전드 고기한상", rate: "4.5", review: "50", deliveryTime: "20~31분"),
        RecentOrder(imageName: "foodWide3", restaurant: "파스타예요 영등포 점", rate: "4.8", review: "21", deliveryTime: "11~25분"),
        RecentOrder(imageName: "foodWide4", restaurant: "ASAP PIZZA 구로디지털단지", rate: "5.0", review: "100", deliveryTime: "31~46분"),
        RecentOrder(imageName: "foodWide5", restaurant: "레전드 고기한상", rate: "4.5", review: "32", deliveryTime: "20~31분"),
        RecentOrder(imageName: "foodWide6", restaurant: "파스타예요 영등포 점", rate: "4.8", review: "1,973", deliveryTime: "11~25분")
    ]
    
    static let discount: [RecentOrder] = [
        RecentOrder(imageName: "foodWide6", restaurant: "파스타예요 영등포 점", rate: "4.8", review: "1,973", deliveryTime: "11~25분"),
        RecentOrder(imageName: "foodWide5", restaurant: "레전드 고기한상", rate: "4.5", review: "32", deliveryTime: "20~31분"),
        RecentOrder(imageName: "foodWide4", restaurant: "ASAP PIZZA 구로디지털단지", rate: "5.0", review: "100", deliveryTime: "31~46분"),
        RecentOrder(imageName: "foodWide3", restaurant: "파스타예요 영등포 점", rate: "4.8", review: "21", deliveryTime: "11~25분"),
        RecentOrder(imageName: "foodWide1", restaurant: "ASAP PIZZA 구로디지털단지", rate: "5.0", review: "231", deliveryTime: "31~46분"),
        RecentOrder(imageName: "foodWide2", restaurant: "레전드 고기한상", rate: "4.5", review: "50", deliveryTime: "20~31분"),
    ]
}
