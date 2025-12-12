//
//  LoginView.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/9/25.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    @State private var navigateToWelcome: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(spacing: 55) {
                    Image(.arrowLeft)
                        .frame(width: 36)
                    
                    Text("이메일 또는 아이디로 계속")
                        .font(.title_sb_18)
                    
                    Spacer()
                }
                .padding(.bottom, 24)
                
                CustomTextField(text: $email, placeholder: "이메일 또는 아이디를 입력해 주세요")
                    .padding(.bottom, 12)
                
                CustomTextField(text: $password, placeholder: "비밀번호")
                    .padding(.bottom, 20)
                
                CTAButton(text: "로그인", isActive: !email.isEmpty && !password.isEmpty) {
                    if !email.isEmpty && !password.isEmpty {
                        navigateToWelcome = true
                    }
                }
                .padding(.bottom, 32)
                
                HStack(spacing: 4) {
                    Text("계정 찾기")
                        .font(.body_r_14)
                    
                    Image(.chevronRight)
                        .resizable()
                        .frame(width: 12, height: 12)
                }
            }
            .navigationDestination(isPresented: $navigateToWelcome) {
                WelcomeView(userID: email)
            }
            .padding(.horizontal, 16)
            
            Spacer()
        }
    }
}
