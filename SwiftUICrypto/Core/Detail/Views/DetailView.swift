//
//  DetailView.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 26/02/2024.
//

import SwiftUI


struct DetailView: View {
    
    @StateObject var vm: DetailViewModel
    
    init(coin: CoinModel){
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("init with coin: \(coin.name)")
    }
    
    var body: some View {
        Text("Detail")
    }
}

#Preview {
    DetailView(coin: ModelData().coin)
}
