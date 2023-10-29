//
//  ContentView.swift
//  Converter
//
//  Created by Ben Hardy on 10/25/23.
//

import SwiftUI

struct CurrencyConverter: View {
    
     @ObservedObject var viewModel = CurrencyConverterViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                    ForEach(viewModel.listOfCards) {card in
                        CurrencyItem(card: card)
                            .onTapGesture {
                                viewModel.flip(card: card)
                            }
                    }
                }
                .padding(.top, 50)
                .padding(.trailing, 30)
                .padding(.leading, 30)
                
            }
            .onAppear {
                viewModel.fetchCards()
                
            }.navigationTitle("1 USD Exchange Rate")
                .navigationBarTitleDisplayMode(.inline)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyConverter()
    }
}
