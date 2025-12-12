//
//  TabBarView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/12/25.
//

import SwiftUI

enum Tab: Int {
    case home = 0
    case shopping = 1
    case heart = 2
    case order = 3
    case face = 4
}

struct TabBarView: View {
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MainView()
                .tag(Tab.home)
                .tabItem {
                    TabItemView(
                        imageName: "home",
                        title: "홈",
                        tab: .home,
                        selectedTab: selectedTab
                    )
                }
            
            Color.yellow
                .tag(Tab.shopping)
                .tabItem {
                    TabItemView(
                        imageName: "shopping",
                        title: "장보기·쇼핑",
                        tab: .shopping,
                        selectedTab: selectedTab
                    )
                }
            
            Color.green
                .tag(Tab.heart)
                .tabItem {
                    TabItemView(
                        imageName: "heart",
                        title: "찜",
                        tab: .heart,
                        selectedTab: selectedTab
                    )
                }
            
            Color.blue
                .tag(Tab.order)
                .tabItem {
                    TabItemView(
                        imageName: "order",
                        title: "주문내역",
                        tab: .order,
                        selectedTab: selectedTab
                    )
                }
            
            Color.red
                .tag(Tab.face)
                .tabItem {
                    TabItemView(
                        imageName: "face",
                        title: "마이배민",
                        tab: .face,
                        selectedTab: selectedTab
                    )
                }
        }
        .tint(.baeminBlack)
        .navigationBarBackButtonHidden(true)
    }
}

struct TabItemView: View {
    let imageName: String
    let title: String
    let tab: Tab
    let selectedTab: Tab
    
    private var isSelected: Bool {
        tab == selectedTab
    }
    
    var body: some View {
        VStack(spacing: 5) {
            Image(imageName)
            
            Text(title)
                .font(isSelected ? .title_sb_10 : .body_r_10)
        }
    }
}
