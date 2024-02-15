//
//  SliderHW_2.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 14/02/2024.
//

import SwiftUI

struct SliderHW_2: View {

    @State private var sliderValue: Double = 0
    @State private var isEditing = false
    @State private var textFieldValue: String = ""

    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            HStack {
                Text("\(lround(sliderValue))")
                    .foregroundStyle(Color.white)
                    .frame(CGSize(width: 35, height: 45))

                SliderColor(value: $sliderValue, tintColor: .red)
                
                ZStack(alignment: .trailing) {
                    TextField("", text: $textFieldValue)
                        .padding(.horizontal, 8)
                        .frame(width: 75, height: 45)
                        .multilineTextAlignment(.trailing)
                        .background(Color.white)
                        .cornerRadius(10)
                        .keyboardType(.default)
                    if textFieldValue.isEmpty {
                        Text("\(lround(sliderValue))")
                            .padding(.horizontal, 8)
                    }

                }
            }
            .padding()
        }
    }
}

#Preview {
    SliderHW_2()
}

struct SliderColor: View {

    @Binding var value: Double
    var tintColor: Color

    var body: some View {
        Slider(value: $value, in: 0...255).tint(tintColor)

    }
}
