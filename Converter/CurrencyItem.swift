//
//  CurrencyItem.swift
//  Converter
//
//  Created by Ben Hardy on 10/25/23.
//

import SwiftUI

struct CurrencyItem: View {
    
    var card : ConvertModel<CurrencyItemModel>
    
    
    var body: some View {

            if card.isFront {
                FrontCurrencyItem(card: card.cardContent)
            } else {
                BackCurrencyItem(card: card.cardContent)
            }
 
    }
}

struct CurrencyItem_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyItem(card: ConvertModel(cardContent: CurrencyItemModel(currencyName: "", currencyCode: "", countryFlag: "", multiplier: 1)))
    }
}

struct FrontCurrencyItem: View {
    
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.countryFlag)
                    .font(.system(size: 50))
                Spacer()
            }
            HStack {
                Spacer()
                Text(card.currencyCode)
                    .font(.system(size: 20))
                    .bold()
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}

struct BackCurrencyItem: View {
    
    var card: CurrencyItemModel

    
    var body: some View {
        VStack {
            HStack {
                Text(card.currencyName)
                    .font(.system(size: 20))
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(card.multiplier))
                    .font(.system(size: 20))
                    .bold()
                
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}
