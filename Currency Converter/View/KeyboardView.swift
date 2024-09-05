//
//  KeyboardView.swift
//  Currency Converter
//
//  Created by anikin02 on 05.09.2024.
//

import SwiftUI

struct KeyboardView: View {
  @EnvironmentObject var currencyConverterViewModel: CurrencyConverterViewModel
  var body: some View {
    VStack(spacing: 20) {
      HStack(spacing: 20) {
        KeyButtonView(keyValue: "7")
          .environmentObject(currencyConverterViewModel)
        KeyButtonView(keyValue: "8")
          .environmentObject(currencyConverterViewModel)
        KeyButtonView(keyValue: "9")
          .environmentObject(currencyConverterViewModel)
      }
      HStack(spacing: 20) {
        KeyButtonView(keyValue: "4")
          .environmentObject(currencyConverterViewModel)
        KeyButtonView(keyValue: "5")
          .environmentObject(currencyConverterViewModel)
        KeyButtonView(keyValue: "6")
          .environmentObject(currencyConverterViewModel)
      }
      HStack(spacing: 20) {
        KeyButtonView(keyValue: "1")
          .environmentObject(currencyConverterViewModel)
        KeyButtonView(keyValue: "2")
          .environmentObject(currencyConverterViewModel)
        KeyButtonView(keyValue: "3")
          .environmentObject(currencyConverterViewModel)
      }
      HStack(spacing: 20) {
        KeyButtonView(keyValue: "0")
          .environmentObject(currencyConverterViewModel)
        KeyButtonView(keyValue: "=")
          .environmentObject(currencyConverterViewModel)
        KeyButtonView(keyValue: "C")
          .environmentObject(currencyConverterViewModel)
      }
    }
  }
}

struct KeyButtonView: View {
  @EnvironmentObject var currencyConverterViewModel: CurrencyConverterViewModel
  let keyValue: String
  var body: some View {
    Button {
      switch keyValue {
      case "=":
        currencyConverterViewModel.converterCurrency()
      case "C":
        currencyConverterViewModel.cleanInput()
      default:
        currencyConverterViewModel.addInputElement(element: keyValue)
      }
    } label: {
      Text(keyValue)
        .font(.system(size: 50, weight: .bold))
    }
    .foregroundStyle(.white)
    .frame(maxWidth: .infinity)
    .frame(height: 80)
    .background(.orange)
    .clipShape(.rect(cornerRadius: 10))
  }
}
