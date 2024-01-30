//
//  SwiftLogo.swift
//  SwiftUIPrax
//
//  Created by Maxim Kucherov on 30/01/2024.
//

import SwiftUI

struct SwiftLogo: View {
    var body: some View {
        ZStack {
            ColorCircle(color: .orange)
            SwiftImage()
                .offset(CGSize(width: -10.0, height: -8.0))
        }
    }
}

#Preview {
    SwiftLogo()
}
