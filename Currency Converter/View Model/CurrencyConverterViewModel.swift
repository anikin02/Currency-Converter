//
//  CurrencyConverterViewModel.swift
//  Currency Converter
//
//  Created by anikin02 on 05.09.2024.
//

import Foundation

class CurrencyConverterViewModel: ObservableObject {
  @Published var inputValue: String = "0"
  @Published var inputCurrency: String = "EUR"
  
  @Published var outputValue: String = "0"
  @Published var outputCurrency: String = "USD"
  
  @Published var currencyRate = CurrencyRate(rates: [String : Double]())
  
  init() {
    setCurrencyRateFromAPI()
  }
  
  func setCurrencyRateFromAPI() {
    APIManager.shared.getCurrencyRate { responce in
      DispatchQueue.main.async {
        self.currencyRate = responce
      }
    }
  }
  
  func addInputElement(element: String) {
    if inputValue == "0" {
      inputValue = element
    } else {
      inputValue += element
    }
  }
  
  func converterCurrency() {
    let temp = (Double(inputValue) ?? 0) / currencyRate.rates[inputCurrency]! * currencyRate.rates[outputCurrency]!
    outputValue = String(format: "%.2f", temp)
  }
  
  func cleanInput() {
    inputValue = "0"
    outputValue = "0"
  }
  
  func swapValues() {
    converterCurrency()
    
    let tempValue = inputValue
    let tempCurrency = inputCurrency
    
    inputValue = outputValue
    inputCurrency = outputCurrency
    
    outputValue = tempValue
    outputCurrency = tempCurrency
    
    converterCurrency()
  }
}
