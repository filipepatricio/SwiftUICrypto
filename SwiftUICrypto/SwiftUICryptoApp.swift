//
//  SwiftUICryptoApp.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 21/02/2024.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
