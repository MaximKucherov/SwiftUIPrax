//
//  Lesson2_HW.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 14/02/2024.
//

import SwiftUI

struct Lesson2_HW: View {

    @State private var redSliderValue: Double = 0
    @State private var greenSliderValue: Double = 0
    @State private var blueSliderValue: Double = 0
    @State private var stringValue: String = ""

    var body: some View {
        ZStack {
            Color(.blue.withAlphaComponent(0.8)).ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .foregroundStyle(Color(red: redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255))
                    .frame(CGSize(width: 350, height: 150))
                    .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
                    .padding(.bottom, 40)
                VStack {
                    HStack {
                        TextValue(value: $redSliderValue)
                        SliderColor(value: $redSliderValue).tint(.red)
                        TextFieldValue(value: $redSliderValue, textField: $stringValue)
                    }
                    HStack {
                        TextValue(value: $greenSliderValue)
                        SliderColor(value: $greenSliderValue).tint(.green)
                        TextFieldValue(value: $greenSliderValue, textField: $stringValue)
                    }
                    HStack {
                        TextValue(value: $blueSliderValue)
                        SliderColor(value: $blueSliderValue).tint(.blue)
                        TextFieldValue(value: $blueSliderValue, textField: $stringValue)
                    }
                }
                .padding(.horizontal, 10)
                Spacer()
            }

        }
    }
}

#Preview {
    Lesson2_HW()
}
