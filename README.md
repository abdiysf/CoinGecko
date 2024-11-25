# CoinGecko
Here's a `README.md` file for your cryptocurrency application:

---

# CryptoTracker

CryptoTracker is an iOS application that displays information about cryptocurrencies, including their prices, market caps, and other key metrics. The app is built using SwiftUI and utilizes the [CoinGecko API](https://docs.coingecko.com/v3.0.1/reference/introduction) to fetch real-time cryptocurrency data.

## Features

- **Live Cryptocurrency Data**: View real-time information about popular cryptocurrencies, including current price, market cap, 24-hour highs/lows, and all-time highs/lows.
- **Search and Detail View**: Easily navigate and view detailed data for selected cryptocurrencies.
- **Modern Design**: Built with SwiftUI for a sleek and responsive user experience.

## Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/CoinGecko.git
   ```

2. **Set Up API Key**
   - **Create an account** on [CoinGecko](https://www.coingecko.com/) to use the API for free.
   - Review the API documentation [here](https://docs.coingecko.com/v3.0.1/reference/introduction) for usage details.
   - In the project directory, locate the `Config.xcconfig` file. If it’s missing, create it.
   - Add the following line to your `Config.xcconfig` file:
     ```plaintext
     API_KEY = your_api_key_here
     ```

3. **Open in Xcode**
   - Open the cloned repository in Xcode.

4. **Build and Run**
   - Select your simulator/device.
   - Press `Cmd + R` to build and run the app.

## Requirements

- Xcode 14 or later
- iOS 16 or later

## Usage

- Launch the app on your device or simulator.
- Explore the list of cryptocurrencies displayed.
- Tap on a cryptocurrency to view detailed information in the Detail View.

## Technologies Used

- **SwiftUI**: Provides a dynamic and modern user interface.
- **Networking**: Fetches data using the CoinGecko API.
- **Async/Await**: Handles asynchronous data fetching for a smooth user experience.
- **MVVM Architecture**: Clean and maintainable code structure with ObservableObject for state management.

---
## PREVIEW
![image](https://github.com/user-attachments/assets/f3acb495-c349-4acb-b7fc-cef51022336d)


Enjoy tracking your favorite cryptocurrencies with CryptoTracker! 🚀
