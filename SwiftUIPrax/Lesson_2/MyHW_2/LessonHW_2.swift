//
//  Lesson2_HW.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 14/02/2024.
//

import SwiftUI

struct Lesson2_HW: View {

    var body: some View {
        ZStack {
            Color(.blue).ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .foregroundStyle(.green)
                    .frame(CGSize(width: 350, height: 150))
                    .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
                Spacer()
                
            }
        }
    }
}

#Preview {
    Lesson2_HW()
}
