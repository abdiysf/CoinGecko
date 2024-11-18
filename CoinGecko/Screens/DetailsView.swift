//
//  DetailsView.swift
//  CoinGecko
//
//  Created by Abdirahman Standard on 17/11/24.
//

import SwiftUI

struct DetailsView: View {
    @Environment(CryptoViewModel.self) var viewModel
    var body: some View {
                    if let cryptocurrency = viewModel.selectedCryptocurrency {
        //            let cryptocurrency = viewModel.selectedCryptocurrency
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Image
                AsyncImage(url: URL(string: cryptocurrency.image ?? "")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                } placeholder: {
                    ProgressView()
                }
                .frame(maxWidth: .infinity)
                
                // Basic Info
                Text(cryptocurrency.name ?? "")
                    .font(.largeTitle)
                    .bold()
                
                Text(cryptocurrency.symbol.uppercased() ?? "")
                    .font(.title2)
                    .foregroundColor(.gray)
                
                // Pricing and Market Info
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Current Price:")
                            .fontWeight(.bold)
                        Text(String(format: "$%.2f", cryptocurrency.currentPrice))
                    }
                    HStack {
                        Text("Market Cap:")
                            .fontWeight(.bold)
                        Text(String(format: "$%.2f", cryptocurrency.marketCap))
                    }
                    if let high24h = cryptocurrency.high24h {
                        HStack {
                            Text("24h High:")
                                .fontWeight(.bold)
                            Text(String(format: "$%.2f", high24h))
                        }
                    }
                    if let low24h = cryptocurrency.low24h {
                        HStack {
                            Text("24h Low:")
                                .fontWeight(.bold)
                            Text(String(format: "$%.2f", low24h))
                        }
                    }
                }
                
                // ATH and ATL Info
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("All-Time High:")
                            .fontWeight(.bold)
                        Text(String(format: "$%.2f", cryptocurrency.ath))
                    }
                    HStack {
                        Text("All-Time Low:")
                            .fontWeight(.bold)
                        Text(String(format: "$%.2f", cryptocurrency.atl))
                    }
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(cryptocurrency.name)
        .navigationBarTitleDisplayMode(.inline)
    } else {
        // Fallback for no selected cryptocurrency
        Text("No cryptocurrency selected")
            .font(.title)
            .foregroundColor(.gray)
            .navigationTitle("Details")
    }
        }
    
}

#Preview {
    DetailsView()
}
