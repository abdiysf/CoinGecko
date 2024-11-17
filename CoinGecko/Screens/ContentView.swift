//
//  ContentView.swift
//  CoinGecko
//
//  Created by Abdirahman Standard on 17/11/24.
//

import SwiftUI

struct ContentView: View {
    var service = DataService()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            Task {
               let data = await service.fetchData()
            }
        }
    }
}

#Preview {
    ContentView()
}
