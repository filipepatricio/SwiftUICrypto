//
//  CoinRowView.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 21/02/2024.
//

import SwiftUI

struct CoinRowView: View {
    let coin: CoinModel
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack(spacing: 0){
            leftColumn
            Spacer()
            if showHoldingsColumn{
                centerColumn
            }
            rightColumn
            
        }
        .font(.subheadline)
    }
}


#Preview("light", traits: .sizeThatFitsLayout) {
    Group{
        CoinRowView(coin: ModelData().coin, showHoldingsColumn: true)
    }
}

#Preview("dark", traits: .sizeThatFitsLayout) {
    CoinRowView(coin: ModelData().coin, showHoldingsColumn: true)
        .preferredColorScheme(.dark)
}

extension CoinRowView{
    private var leftColumn: some View {
        HStack(spacing: 0){
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            CoinImageView(coin: coin)
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
        }
    }
    
    private var centerColumn: some View {
        VStack(alignment: .trailing){
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
                .bold()
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundColor(Color.theme.accent)
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing){
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundColor(Color.theme.accent)
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                .foregroundColor(
                    (coin.priceChangePercentage24H ?? 0) >= 0 ?
                    Color.theme.green :
                        Color.theme.red
                )
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
}
