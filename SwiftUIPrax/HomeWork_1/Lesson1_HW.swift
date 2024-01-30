//
//  Lesson1_HW.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 30/01/2024.
//

import SwiftUI

struct Lesson1_HW: View {

    @State private var activeLightIndex = -1
    @State private var textButton = "START"

    let opacityOff = 1.0
    let opacityOn = 0.2
    let lightColor: [Color] = [.red, .yellow, .green]

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                TrafficLightCircles(
                    activeLightIndex: $activeLightIndex,
                    lightColor: lightColor[0],
                    opacityOn: opacityOn,
                    opacityOff: opacityOff,
                    circleIndex: 0
                )
                TrafficLightCircles(
                    activeLightIndex: $activeLightIndex,
                    lightColor: lightColor[1],
                    opacityOn: opacityOn,
                    opacityOff: opacityOff,
                    circleIndex: 1
                )
                    .padding()
                TrafficLightCircles(
                    activeLightIndex: $activeLightIndex,
                    lightColor: lightColor[2],
                    opacityOn: opacityOn,
                    opacityOff: opacityOff,
                    circleIndex: 2
                )

                Spacer()

                StartButton(activeLightIndex: $activeLightIndex, textButton: $textButton, lightColorCount: lightColor.count)

            }
        }
    }
}

#Preview {
    Lesson1_HW()
}


/*

 Circle()
     .frame(width: 100, height: 100)
     .foregroundColor(
         activeLightIndex == 0 ?
         lightColor[0].opacity(opasityOff) :
         lightColor[0].opacity(opasityOn)
     )
     .overlay(Circle().stroke(Color.white, lineWidth: 4))
 Circle()
     .frame(width: 100, height: 100)
     .foregroundColor(
         activeLightIndex == 1 ?
         lightColor[1].opacity(opasityOff) :
         lightColor[1].opacity(opasityOn)
     )
     .overlay(Circle().stroke(Color.white, lineWidth: 4))
     .padding()
 Circle()
     .frame(width: 100, height: 100)
     .foregroundColor(
         activeLightIndex == 2 ?
         lightColor[2].opacity(opasityOff) :
         lightColor[2].opacity(opasityOn)
     )
     .overlay(Circle().stroke(Color.white, lineWidth: 4))


 Button(action: {
     textButton = "NEXT"
     activeLightIndex = (activeLightIndex + 1) % lightColor.count
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

 */
