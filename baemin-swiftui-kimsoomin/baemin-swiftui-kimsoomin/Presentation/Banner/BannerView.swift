//
//  BannerView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/9/25.
//

import SwiftUI

struct BannerView: View {
    let bannerImages: [String] = ["banner1", "banner2", "banner3"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 0) {
                ForEach(bannerImages.indices, id: \.self) { index in
                    Image(bannerImages[index])
                        .resizable()
                        .scaledToFit()
                        .containerRelativeFrame(.horizontal, count: bannerImages.count, span: bannerImages.count, spacing: 0)
                }
            }
        }
        .scrollTargetBehavior(.paging)
    }
}
