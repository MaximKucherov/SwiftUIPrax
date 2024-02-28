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
        HStack {
            TextValue(value: $sliderValue)
            SliderColor(value: $sliderValue)
            TextFieldValue(value: $sliderValue, textField: $textFieldValue)
        }
    }
}

#Preview {
    SliderHW_2()
}

struct SliderColor: View {
    @Binding var value: Double
    var body: some View {
        Slider(value: $value, in: 0...255)
    }
}

struct TextValue: View {
    @Binding var value: Double
    var body: some View {
        Text("\(lround(value))")
            .foregroundStyle(Color.white)
            .frame(CGSize(width: 35, height: 45))
    }
}

struct TextFieldValue: View {
    @Binding var value: Double
    @Binding var textField: String
    var body: some View {
        ZStack(alignment: .trailing) {
            TextField("", text: $textField)
                .padding(.horizontal, 8)
                .frame(width: 60, height: 40)
                .multilineTextAlignment(.trailing)
                .background(Color.white)
                .cornerRadius(10)
                .keyboardType(.default)
            if textField.isEmpty {
                Text("\(lround(value))")
                    .padding(.horizontal, 8)
            }
        }
    }
}
