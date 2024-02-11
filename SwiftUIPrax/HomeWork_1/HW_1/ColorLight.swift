//
//  ColorLight.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 11/02/2024.
//

import SwiftUI

struct ColorLight: View {

    let color: Color
    let opasity: Double

    var body: some View {
        ZStack {
            Color
                .black
                .ignoresSafeArea()
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
                .opacity(opasity)
                .overlay(Circle().stroke(Color.white, lineWidth: 4)
                )
        }
    }
}

#Preview {
    ColorLight(color: .red, opasity: 1)
}
