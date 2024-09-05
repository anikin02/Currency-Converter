//
//  CurrencyConverterViewModel.swift
//  Currency Converter
//
//  Created by anikin02 on 05.09.2024.
//

import Foundation

class CurrencyConverterViewModel: ObservableObject {
  @Published var inputValue: String = "0"
  @Published var outputValue: String = "0"
  
  func addInputElement(element: String) {
    if inputValue == "0" {
      inputValue = element
    } else {
      inputValue += element
    }
  }
  
  func converterCurrency() {
    outputValue = inputValue
  }
  
  func cleanInput() {
    inputValue = "0"
    outputValue = "0"
  }
}
