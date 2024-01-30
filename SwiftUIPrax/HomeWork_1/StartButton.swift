//
//  StartButton.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 30/01/2024.
//

import SwiftUI

struct StartButton: View {

    @Binding var activeLightIndex: Int
    @Binding var textButton: String
    let lightColorCount: Int

    var body: some View {
        Button(action: {
            textButton = "NEXT"
            activeLightIndex = (activeLightIndex + 1) % lightColorCount
        }) {
            Text(textButton)
                .font(.title)
                .foregroundStyle(Color.white)
                .bold()
                .frame(width: 175, height: 50)
        }
        .background(Color(red: 0.0, green: 0.012, blue: 0.776))
        .overlay(RoundedRectangle(cornerRadius: 20.0).stroke(Color.white, lineWidth: 7))
        .cornerRadius(20)
        .padding(.bottom, 20)
    }
}

//#Preview {
//    StartButton()
//}
