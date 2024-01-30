//
//  SwiftImage.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 30/01/2024.
//

import SwiftUI

struct SwiftImage: View {
    var body: some View {
        ZStack {
            Image("swift")
                .resizable()
//                .aspectRatio(contentMode: .fit)
                .frame(width: 150,height: 150)

        }
    }
}

#Preview {
    SwiftImage()
}
