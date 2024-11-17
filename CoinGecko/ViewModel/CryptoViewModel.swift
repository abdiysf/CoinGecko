//
//  CryptoViewModel.swift
//  CoinGecko
//
//  Created by Abdirahman Standard on 17/11/24.
//

import Foundation

@Observable
class CryptoViewModel {

    var cryptocurrencies: [Cryptocurrency] = []
    var selectedCryptocurrency: Cryptocurrency?
    
    let cryptoService = DataService()
    
    
}
