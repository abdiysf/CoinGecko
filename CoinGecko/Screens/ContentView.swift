//
//  ContentView.swift
//  CoinGecko
//
//  Created by Abdirahman Standard on 17/11/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(CryptoViewModel.self) var model
    
    var body: some View {
        @Bindable var selectedCrypto = model
            NavigationView {
                List(model.cryptocurrencies) { crypto in
                    HStack {
                        AsyncImage(url: URL(string: crypto.image)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                        } placeholder: {
                            ProgressView()
                        }
                        
                        VStack(alignment: .leading) {
                            Text(crypto.name)
                                .font(.headline)
                            Text(crypto.symbol.uppercased())
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Text(String(format: "$%.2f", crypto.currentPrice))
                            .font(.headline)
                    }
                    .onTapGesture {
                        model.selectedCryptocurrency = crypto
                    }
                   
                   
                }
                .navigationTitle("Cryptocurrencies")
                .task {
                    model.getCrpytocurrencies()
                }
                
                .sheet(item: $selectedCrypto.selectedCryptocurrency) { item in
                    DetailsView()
                }
               
            }
        }

}

#Preview {
    ContentView()
}
