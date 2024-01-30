//
//  ContentView.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 30/01/2024.
//

import SwiftUI

struct ContentView: View {

    @State private var tapCount = 0

    var body: some View {
        VStack {
            SwiftLogo()
                .padding()
            textInfo
            Spacer()
            Button(action: { tapCount += 1 }) {
                Text("Tap Count: \(tapCount)")
                    .font(.title)
            }
            .padding(.bottom, 100)
        }
        .padding()
    }

    private var textInfo: some View {
        VStack(alignment: .leading) {
            Text("Hello, SwiftUI!")
                .font(.title)
            HStack {
                Text("Introduction Stack and Containers")
                    .font(.subheadline)
                Spacer()
                Text("Lesson 1")
            }
        }
    }

}

#Preview {
    ContentView()
}
