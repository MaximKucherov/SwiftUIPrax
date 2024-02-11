//
//  ContentViewHW_1.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 11/02/2024.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentViewHW_1: View {

    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }

}

extension ContentViewHW_1 {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea(.all)

            VStack(spacing: 20) {
                ColorLight(color: .red, opasity: currentLight == .red ? 1 : 0.3)
                ColorLight(color: .yellow, opasity: currentLight == .yellow ? 1 : 0.3)
                ColorLight(color: .green, opasity: currentLight == .green ? 1 : 0.3)

                Spacer()

                ChangeColorButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentViewHW_1()
}
