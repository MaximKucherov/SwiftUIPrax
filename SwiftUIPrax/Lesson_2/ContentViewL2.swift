//
//  ContentViewL2.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 11/02/2024.
//

import SwiftUI

struct ContentViewL2: View {

    @State private var sliderValue = Double.random(in: 0...255)
    @State private var userName = ""
    @State private var displayedName = ""

    var body: some View {
        ZStack {
            Color(white: 0.8)
                .ignoresSafeArea()
            VStack(spacing: 40) {
                Text("\(lround(sliderValue))")
                    .font(.largeTitle)
                UserNameView(userName: displayedName)
                ColorSlider(value: $sliderValue, textColor: .red)
                TextField("Enter your name", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Done", action: checkUserName) 
                Spacer()
            }
            .padding()
        }
    }

    private func checkUserName() {
        if let _ = Double(userName) {
            userName = ""
            return
        }
        displayedName = userName
        userName = ""
    }

}

#Preview {
    ContentViewL2()
}

struct ColorSlider: View {

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

struct UserNameView: View {

    let userName: String

    var body: some View {
        HStack {
            HStack(alignment: .firstTextBaseline) {
                Text("USER NAME: ").frame(height: 60)
                Text(userName)
                    .font(.largeTitle)
            }
            Spacer()
        }
    }
}
