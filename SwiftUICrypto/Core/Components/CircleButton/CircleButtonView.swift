//
//  CircleButtonview.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 21/02/2024.
//

import SwiftUI

struct CircleButtonView: View {
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25),
                radius: 10, x: 0, y: 0
            ).padding()
    }
}

#Preview("light", traits: .sizeThatFitsLayout) {
    CircleButtonView(iconName: "info")
    
}

#Preview("dark", traits: .sizeThatFitsLayout) {
    CircleButtonView(iconName: "plus")
        .colorScheme(.dark)
}
