//
//  HomeView.swift
//  Converter
//
//  Created by Ben Hardy on 10/26/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("World Currency Exchange", destination: CurrencyConverter())
                NavigationLink("Crypto Exchange", destination: CryptoConverter())
                
            }
            .navigationBarTitle("Conversion App")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
