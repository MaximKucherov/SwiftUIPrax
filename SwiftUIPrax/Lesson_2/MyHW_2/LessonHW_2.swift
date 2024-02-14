//
//  Lesson2_HW.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 14/02/2024.
//

import SwiftUI

struct Lesson2_HW: View {

    @State private var firstSlider = Double.random(in: 0...255)

    var body: some View {
        ZStack {
            Color(.blue).ignoresSafeArea()
        }
    }
}

#Preview {
    Lesson2_HW()
}
