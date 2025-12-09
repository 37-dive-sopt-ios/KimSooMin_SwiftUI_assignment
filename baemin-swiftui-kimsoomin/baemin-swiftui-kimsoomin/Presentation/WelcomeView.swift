//
//  WelcomeView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/9/25.
//

import SwiftUI

struct WelcomeView: View {
    @State var userID: String
    
    var body: some View {
        VStack {
            HStack(spacing: 67) {
                Image(.arrowLeft)
                    .frame(width: 36)
                Text("대체 뼈짐 누가 시켰어??")
                    .font(.title_sb_18)
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 9)
            
            Image(.imageBanner)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(.bottom, 24)
            
            VStack {
                Text("환영합니다")
                    .font(.head_b_24)
                    .padding(.bottom, 16)
                
                Text("\(userID)님 반가워요!")
                    .font(.title_sb_18)
                
                Spacer()
                
                CTAButton(text: "메인으로 가기", isActive: true)
            }
            .padding(.horizontal, 16)
        }
    }
}
