//
//  APIManager.swift
//  Currency Converter
//
//  Created by anikin02 on 05.09.2024.
//

import Foundation

class APIManager {
  static let shared = APIManager()
  
  func getCurrencyRate(completion: @escaping (CurrencyRate) -> Void) {
    let urlString: String = "https://api.vatcomply.com/rates"
    guard let url = URL(string: urlString) else { return }
    
    let session = URLSession(configuration: .default)
    let task = session.dataTask(with: url, completionHandler: { (data, response, error) in
      if error != nil {
        print(error!.localizedDescription)
      } else if let data = data {
        do {
          let decoder = JSONDecoder()
          let response = try decoder.decode(CurrencyRate.self, from: data)
          completion(response)
        } catch {
          print(error.localizedDescription)
        }
      }
    })
    task.resume()
  }
}
