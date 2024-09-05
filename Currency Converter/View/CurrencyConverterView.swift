//
//  CurrencyConverterView.swift
//  Currency Converter
//
//  Created by anikin02 on 05.09.2024.
//

import SwiftUI

struct CurrencyConverterView: View {
  
  @ObservedObject var currencyConverterViewModel = CurrencyConverterViewModel()
  
  var body: some View {
    VStack(alignment: .leading) {
      Spacer()
      // Input
      CurrencyView(title: "From")
        .padding(.horizontal, 20)
        .environmentObject(currencyConverterViewModel)
      
      // Switch
      VStack {
        Button {
          
        } label: {
          Image(systemName: "arrow.up.arrow.down")
            .resizable()
            .frame(width: 30, height: 25)
            .foregroundStyle(.white)
        }
        .padding(10)
        .background(.orange)
        .clipShape(.rect(cornerRadius: 10))
      }
      .frame(maxWidth: .infinity)
      
      // Output
      CurrencyView(title: "To")
        .padding(.horizontal, 20)
        .environmentObject(currencyConverterViewModel)
      
      Spacer()
      
      // Keyboard
      KeyboardView()
        .padding(20)
        .environmentObject(currencyConverterViewModel)
    }
  }
}


