//
//  CalculatorView.swift
//  Calculator
//
//  Created by Developer on 10/08/2022.
//

import SwiftUI


struct CalculatorView: View {
    
    @EnvironmentObject private var viewModel: ViewModel

    var body: some View {
        VStack {
            Spacer()
            displayText
            buttonPad
        }
        .padding(Constants.padding)
        .background(.black)
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}

extension CalculatorView {
    private var displayText: some View {
        Text(viewModel.displayText)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment:.trailing)
            .font(.system(size: 88, weight:.light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
    
    private var buttonPad:some View {
        VStack(spacing:Constants.padding) {
            ForEach (viewModel.buttonTypes,id: \.self) { row in
                HStack(spacing:Constants.padding) {
                    ForEach (row,id: \.self) { buttonType in
                        CalculatorButton(buttonType: buttonType)
                    }
                }
            }
        }
    }
}
