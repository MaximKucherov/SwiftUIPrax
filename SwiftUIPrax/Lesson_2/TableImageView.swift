//
//  TableImageView.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 12/02/2024.
//

import SwiftUI

struct TableImageView: View {

    let size: CGSize

    var body: some View {
        Image(systemName: "table")
            .resizable()
            .frame(size) // Наш собственный модификатор
//            .modifier(FrameFromSize(size: size))
//            .frame(width: 250, height: 250)
//            .cornerRadius(250 / 2)
            .background(Color(white: 0.9))
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.red, lineWidth: 8))
            .foregroundColor(.red)
    }
}

extension View {
    func frame(_ size: CGSize) -> some View {
        modifier(FrameFromSize(size: size))
    }
}


struct FrameFromSize: ViewModifier {
    let size: CGSize

    func body(content: Content) -> some View {
        content
            .frame(width: size.width, height: size.height)
    }


}

#Preview {
    TableImageView(size: CGSize(width: 250, height: 250))
}
