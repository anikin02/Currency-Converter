//
//  APIManager.swift
//  Currency Converter
//
//  Created by anikin02 on 05.09.2024.
//

import Foundation

class APIManager {
  static let shared = APIManager()
  
  func getCurrencyRate() -> CurrencyRate {
    
    
    return CurrencyRate(rates: [:])
  }
}
