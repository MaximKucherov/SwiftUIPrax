//
//  ContentViewL2.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 11/02/2024.
//

import SwiftUI

struct ContentViewL2: View {

    // State - определяет первичный источник данных
    // State - должно быть private всегда
    @State private var sliderValue = Double.random(in: 0...255)

    var body: some View {
        VStack {
            // свойство без $ это просто считывание значения - пользователь не взаимодействует
            // с этим элементом интерфейса
            Text("\(lround(sliderValue))")
                .font(.largeTitle)
            // свойство с $ значит мы здесь меняем значение - связываем двухсторонней связью
            // это для тех элементов с которыми может взаимодействовать пользователь
            ColorSlider(value: $sliderValue, textColor: .red)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentViewL2()
}

struct ColorSlider: View {
    
    // Binding - значит что свойство зависит от значений родительского представления sliderValue
    // Binding - объявляем в дочерних структурах
    // Binding - значение этого представления будем передавать из вне
    @Binding var value: Double
    var textColor: Color

    var body: some View {
        HStack {
            Text("0").foregroundStyle(textColor)
            Slider(value: $value, in: 0...255, step: 1)
            Text("255").foregroundStyle(textColor)
        }
        .padding(.horizontal)
    }
}
