//
//  Cryptocurrency.swift
//  CoinGecko
//
//  Created by Abdirahman Standard on 17/11/24.
//

import Foundation

struct Cryptocurrency: Codable, Identifiable {
    let id: String
       let symbol: String
       let name: String
       let image: String
       let currentPrice: Double
       let marketCap: Double
       let marketCapRank: Int
       let fullyDilutedValuation: Double?
       let totalVolume: Double
       let high24h: Double?  // Made optional
       let low24h: Double?   // Made optional
       let priceChange24h: Double?
       let priceChangePercentage24h: Double?
       let marketCapChange24h: Double?
       let marketCapChangePercentage24h: Double?
       let circulatingSupply: Double
       let totalSupply: Double?
       let maxSupply: Double?
       let ath: Double
       let athChangePercentage: Double
       let athDate: String
       let atl: Double
       let atlChangePercentage: Double
       let atlDate: String
       let roi: ROI?
       let lastUpdated: String
}

struct ROI: Codable {
    let times: Double
    let currency: String
    let percentage: Double
}







