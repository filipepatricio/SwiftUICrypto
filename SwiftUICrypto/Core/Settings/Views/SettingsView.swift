//
//  SettingsView.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 27/02/2024.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://www.filipepatricio.github.io")!
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.theme.background
                    .ignoresSafeArea()
                List{
                    swiftfulThinkingSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .tint(Color.blue)
            .navigationTitle("Settings")
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    xMarkButton
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

extension SettingsView{
    private var xMarkButton: some View{
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
    
    private var swiftfulThinkingSection: some View{
        Section {
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("SwiftUI Crypto App @ Swiftful Thinking Course")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe on youtube 🥳", destination: youtubeURL)
        } header: {
            Text("Swiftful Thinking")
        }
    }
    
    private var coinGeckoSection: some View{
        Section {
            VStack(alignment: .leading){
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data is coming from CoinGecko API")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko", destination: coinGeckoURL)
        } header: {
            Text("CoinGecko")
        }
    }
    
    private var developerSection: some View{
        Section {
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Filipe Patricio. It uses SwiftUI and is written 100% in Swift.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Portfolio", destination: personalURL)
        } header: {
            Text("Developer")
        }
    }
    
    private var applicationSection: some View{
        Section {
            Link("Terms of service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company website", destination: defaultURL)
            Link("Learn more", destination: defaultURL)
        } header: {
            Text("Application")
        }
    }
}
