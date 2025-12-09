//
//  CTAButton.swift
//  baemin-swiftui-kimsoomin
//
//  Created by mandoo on 12/9/25.
//

import SwiftUI

struct CTAButton: View {
    var text: String
    var isActive: Bool = false
    
    var body: some View {
        Button {
            
        } label: {
            RoundedRectangle(cornerRadius: 4)
                .foregroundColor(isActive ? .baeminMint500 : .baeminGray200)
                .overlay {
                    Text("\(text)")
                        .foregroundStyle(.baeminWhite)
                        .font(.head_b_18)
                }
        }
        .frame(height: 52)
    }
}

#Preview {
    CTAButton(text: "button", isActive: true)
}
