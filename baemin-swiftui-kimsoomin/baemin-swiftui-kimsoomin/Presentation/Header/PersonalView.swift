//
//  PersonalView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/12/25.
//

import SwiftUI

struct PersonalView: View {
    var body: some View {
        HStack {
            HStack(spacing: 3) {
                Text("우리집")
                    .font(.head_b_16)
                Image(.polygon)
                    .resizable()
                    .frame(width: 8, height: 5)
            }
            
            Spacer()
            
            HStack(spacing: 12) {
                Image(.baeminDiscount)
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Image(.alarm)
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Image(.cart)
                    .resizable()
                    .frame(width: 24, height: 24)
            }
        }
        .padding(.bottom, 10)
    }
}
