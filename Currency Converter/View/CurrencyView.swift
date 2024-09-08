//
//  CurrencyView.swift
//  Currency Converter
//
//  Created by anikin02 on 05.09.2024.
//

import SwiftUI

struct CurrencyView: View {
  @EnvironmentObject var currencyConverterViewModel: CurrencyConverterViewModel
  
  let title: String
  
  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        Text(title)
          .font(.system(size: 20, weight: .light))
          .foregroundStyle(Color("appPurple"))
      }
      HStack {
        HStack {
          Text(title == "From" ? currencyConverterViewModel.inputValue : currencyConverterViewModel.outputValue)
            .font(.system(size: 50, weight: .bold))
            .foregroundStyle(Color("appPurple"))
          Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 10)
        .background(Color(.systemGray6))
        .clipShape(.rect(cornerRadius: 10))
        
        if !currencyConverterViewModel.currencyRate.rates.isEmpty {
          Picker("Currency",
                 selection: title == "From" ? $currencyConverterViewModel.inputCurrency : $currencyConverterViewModel.outputCurrency) {
            ForEach(Array(currencyConverterViewModel.currencyRate.rates.keys).sorted(), id: \.self) { key in
              Text(key)
                .tag(key)
            }
          }
          .tint(Color(.orange))
        } else {
          Text("Load...")
            .padding(11)
            .foregroundColor(.orange)
        }
      }
    }
  }
}
