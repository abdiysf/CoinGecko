//
//  DataService.swift
//  CoinGecko
//
//  Created by Abdirahman Standard on 17/11/24.
//

import Foundation

struct DataService {
    // 1. api key initializing
    let api_key = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func fetchData() async -> Cryptocurrency? {
        // 2. check api key isn't null
        guard api_key != nil else {
            return nil
        }
        
        //MARK: - 3. add base url
        let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets")!
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)!
        let queryItems: [URLQueryItem] = [
          URLQueryItem(name: "vs_currency", value: "USD"),
        ]
        components.queryItems = components.queryItems.map { $0 + queryItems } ?? queryItems

        
        var request = URLRequest(url: components.url!)
        request.httpMethod = "GET"
        request.timeoutInterval = 10
        request.allHTTPHeaderFields = ["accept": "application/json"]

        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            print("\(data)")
            let decoder = JSONDecoder()
            let cryptocurrency = try decoder.decode(Cryptocurrency.self, from: data)
            return cryptocurrency
        }
        catch {
            print(error)
        }
        return nil
    }
    
    
}
