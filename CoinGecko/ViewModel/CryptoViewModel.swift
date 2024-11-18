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
    
    
   func getCrpytocurrencies() {
       Task {
                  do {
                      cryptocurrencies = try await cryptoService.fetchData() 
                  } catch {
                      print("Error fetching cryptocurrencies: \(error)")
                  }
              }
    }
    
    func selectCryptocurrency(_ cryptocurrency: Cryptocurrency) {
            selectedCryptocurrency = cryptocurrency
        }
}
