//
//  HomeStatsView.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 22/02/2024.
//

import SwiftUI

struct HomeStatsView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    
    @Binding var showPorfolio: Bool
    
    var body: some View {
        HStack{
            ForEach(vm.statistics){ stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
        }
        .frame(width: UIScreen.main.bounds.width,
               alignment: showPorfolio ? .trailing : .leading)
    }
}

#Preview {
    HomeStatsView(showPorfolio: .constant(false))
        .environmentObject(ViewModelData().homeViewModel)
}
