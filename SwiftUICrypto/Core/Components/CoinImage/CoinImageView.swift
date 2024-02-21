//
//  CoinImageView.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 21/02/2024.
//

import SwiftUI

struct CoinImageView: View {
    @StateObject var vm: CoinImageViewModel
    
    init(coin: CoinModel){
        _vm = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
    }
    
    var body: some View {
        ZStack{
            if let image = vm.image{
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading{
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

#Preview("",traits: .sizeThatFitsLayout) {
    CoinImageView(coin: ModelData().coin).padding()
}
