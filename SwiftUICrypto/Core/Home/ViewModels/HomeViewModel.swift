//
//  HomeViewModel.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 21/02/2024.
//

import Foundation

class HomeViewModel: ObservableObject{
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.allCoins.append(ModelData().coin)
            self.portfolioCoins.append(ModelData().coin)
        }
    }
    
}
