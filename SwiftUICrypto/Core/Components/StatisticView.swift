//
//  StatisticView.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 22/02/2024.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text(stat.title)
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
            Text(stat.value)
                .font(.headline)
                .foregroundStyle(Color.theme.accent)
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(
                        Angle(degrees: stat.percentageChange ?? 0 >= 0 ? 0 : 180))
                
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundStyle(stat.percentageChange ?? 0 >= 0
                             ? Color.theme.green
                             : Color.theme.red)
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

#Preview("stat1", traits: .sizeThatFitsLayout) {
    StatisticView(stat: ModelData().stat1)
}

#Preview("stat2", traits: .sizeThatFitsLayout) {
    StatisticView(stat: ModelData().stat2)
}

#Preview("stat3", traits: .sizeThatFitsLayout) {
    StatisticView(stat: ModelData().stat3)
}
