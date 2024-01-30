//
//  TrafficLightCircles.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 30/01/2024.
//

import SwiftUI

struct TrafficLightCircles: View {

    @Binding var activeLightIndex: Int
    let lightColor: Color
    let opacityOn: Double
    let opacityOff: Double
    let circleIndex: Int

    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(
                activeLightIndex == circleIndex ? lightColor.opacity(opacityOff) : lightColor.opacity(opacityOn)
            )
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

//#Preview {
//    TrafficLightCircles()
//}
