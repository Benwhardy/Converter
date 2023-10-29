//
//  CryptoConverterViewModel.swift
//  Converter
//
//  Created by Ben Hardy on 10/26/23.
//

import Foundation

class CryptoConverterViewModel : ObservableObject {
    
    @Published private(set) var listOfCards = [ConvertModel<CryptoItemModel>]() //variable is public but setter is private
    
    func fetchCards() {
        self.listOfCards = [
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "USD", cryptoCode: "USD", multiplier: 23450)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "ETH", cryptoCode: "ETH", multiplier: 14.3)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Tether", cryptoCode: "tether", multiplier: 23450)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "BNB", cryptoCode: "BNB", multiplier: 77.2)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "USD Coin", cryptoCode: "USDC", multiplier: 23454)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "XRP", cryptoCode: "XRP", multiplier: 62113))
        ]
    }
    
    
    func convertToCurrency(_ bitcoin: String, multiplier: Double) -> String {
        guard let bitcoinValue = Double(bitcoin) else { return "0" }
        let convertedValue = bitcoinValue * multiplier
        return String(format: "%.2f", convertedValue)
    }
}
