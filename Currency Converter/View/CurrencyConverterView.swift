//
//  CurrencyConverterView.swift
//  Currency Converter
//
//  Created by anikin02 on 05.09.2024.
//

import SwiftUI

struct CurrencyConverterView: View {
  var body: some View {
    VStack {
      // Input
      
      // Output
      Spacer()
      // Keyboard
      KeyboardView()
        .padding(20)
    }
  }
}


struct KeyboardView: View {
  var body: some View {
    VStack(spacing: 20) {
      HStack(spacing: 20) {
        KeyNumberButtonView(keyValue: 7)
        KeyNumberButtonView(keyValue: 8)
        KeyNumberButtonView(keyValue: 9)
      }
      HStack(spacing: 20) {
        KeyNumberButtonView(keyValue: 4)
        KeyNumberButtonView(keyValue: 5)
        KeyNumberButtonView(keyValue: 6)
      }
      HStack(spacing: 20) {
        KeyNumberButtonView(keyValue: 1)
        KeyNumberButtonView(keyValue: 2)
        KeyNumberButtonView(keyValue: 3)
      }
      HStack(spacing: 20) {
        KeyNumberButtonView(keyValue: 0)
        KeyButtonView(keyValue: "=")
        KeyButtonView(keyValue: "C")
      }
    }
  }
}

struct KeyNumberButtonView: View {
  let keyValue: Int
  var body: some View {
    Button {
      
    } label: {
      Text(String(keyValue))
        .font(.system(size: 50, weight: .bold))
    }
    .foregroundStyle(.white)
    .frame(maxWidth: .infinity)
    .frame(height: 80)
    .background(.orange)
  }
}

struct KeyButtonView: View {
  let keyValue: String
  var body: some View {
    Button {
      
    } label: {
      Text(keyValue)
        .font(.system(size: 50, weight: .bold))
    }
    .foregroundStyle(.white)
    .frame(maxWidth: .infinity)
    .frame(height: 80)
    .background(.orange)
  }
}
