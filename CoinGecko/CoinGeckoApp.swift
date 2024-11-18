//
//  CoinGeckoApp.swift
//  CoinGecko
//
//  Created by Abdirahman Standard on 17/11/24.
//

import SwiftUI

@main
struct CoinGeckoApp: App {
    @State var cryptoModel = CryptoViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(cryptoModel)
        }
    }
}
