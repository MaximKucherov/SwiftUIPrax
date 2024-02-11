//
//  ChangeColorButton.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 11/02/2024.
//

import SwiftUI

struct ChangeColorButton: View {

    let title: String
    let action: () -> Void

    var body: some View {
        ZStack {
            Color
                .black
                .ignoresSafeArea()
            Button(action: action) {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
            }
            .padding()
            .frame(width: 200, height: 60)
            .background(Color(.blue))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.white, lineWidth: 4)
            )
        }
    }
}

#Preview {
    ChangeColorButton(title: "START", action: {})
}
