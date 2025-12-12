//
//  CustomTextField.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/9/25.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    @FocusState private var isFocused: Bool
    var placeholder: String
    var isActive: Bool = false
    
    var body: some View {
        TextField(placeholder, text: $text)
            .focused($isFocused)
            .padding(.horizontal, 10)
            .padding(.vertical, 16)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(isFocused ? .baeminBlack : .baeminGray200,
                            lineWidth: isFocused ? 2 : 1)
            )
            .font(.body_r_14)
            .foregroundStyle(isFocused ? .baeminBlack : .baeminGray700)
            .frame(height: 46)
    }
}
