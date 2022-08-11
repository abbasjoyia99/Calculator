//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Developer on 10/08/2022.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorView.ViewModel())

        }
    }
}
