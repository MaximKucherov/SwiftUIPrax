//
//  ColorCircle.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 30/01/2024.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    var body: some View {
        ZStack {
            Circle()
  //            .ignoresSafeArea() - Лишний тут
                .foregroundColor(color)
                .frame(width: 250, height: 250)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 30)
        }
    }
}

#Preview {
    ColorCircle(color: .red)
}
