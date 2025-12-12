//
//  HeaderView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/9/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            PersonalView()
                .padding(.horizontal, 16)
            
            EventView()
        }
    }
}
