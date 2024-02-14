//
//  SliderHW_2.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 14/02/2024.
//

import SwiftUI

struct SliderHW_2: View {

    @State private var leftSliderValue = 0.0
    @State private var rightSliderValue = ""

    var body: some View {
        HStack {
            Text("\(lround(leftSliderValue))")
            Slider(value: $leftSliderValue, in: 0...255, step: 1)
            TextField("0", text: $rightSliderValue)
                
                .frame(width: 50)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}

#Preview {
    SliderHW_2()
}
