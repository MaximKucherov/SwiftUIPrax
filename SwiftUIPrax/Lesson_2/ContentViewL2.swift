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
    @State private var alertPresented = false

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
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .bordered()
                Button("Done", action: checkUserName)
                    .alert(isPresented: $alertPresented) {
                        Alert(title: Text("Wrong Format"),
                              message: Text("Enter your name"))
                    }
                VStack {
                    Text("Welcome to ")
//                        .font(.system(size: 60))
//                        .foregroundStyle(.red)
                        .bold()
                    Text("SwiftUI")
//                        .font(.system(size: 60))
//                        .foregroundStyle(.red)
                        .bold()
                }
                .font(.system(size: 60))
                .foregroundStyle(.red)
//                    .bold()
//                    .lineLimit(2)
//                    .multilineTextAlignment(.center)
//                    .background(Color.blue)
//                    .padding()
//                    .background(Color.red)
                Spacer()
            }
            .padding()
        }
    }

    private func checkUserName() {
        if let _ = Double(userName) {
            userName = ""
            alertPresented.toggle()
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
                .background(textColor)
                .cornerRadius(40)
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

struct BorderedViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
            )
            .shadow(color: Color.gray.opacity(0.4), radius: 3, x: 1, y: 2)
    }
}

extension TextField {
    func bordered() -> some View {
//        modifier(BorderedViewModifier()) - один вариант
        // или второй вариант
        ModifiedContent(content: self, modifier: BorderedViewModifier())
    }
}
