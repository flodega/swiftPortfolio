//
//  TipCalculatorView.swift
//  Tip Calculator
//
//  Created by florian houndjahoue on 4/19/23.
//

import SwiftUI

struct TipCalculatorView: View {
    @State private var billAmount = ""
    @State private var tipPercentage = 15
    @State private var totalAmount = 0.0
    
    var body: some View {
        VStack {
            TextField("Bill Amount", text: $billAmount)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
            Picker(selection: $tipPercentage, label: Text("Tip Percentage")){
                ForEach(0..<31) {
                    index in
                    if index % 5 == 0 && index != 0 {
                        Text("\(index)%")
                    }
                }
            }.pickerStyle(SegmentedPickerStyle())
            Button(action: calculateTotalAmount){
                Text("calculate")
            }
            Spacer()
            Text("Tip Amount: $\(tipAmount, specifier: "%.2f")")
            Text("Total Amount: $\(totalAmount, specifier: "%.2f")")

        }.padding()
    }
    
    private var tipAmount: Double {
        let bill = Double(billAmount) ?? 0
        let tip = Double(tipPercentage) / 100.0
        return bill * tip
    
    }
    
    private func calculateTotalAmount() {
        let bill = Double(billAmount) ?? 0
        let tip = tipAmount
        totalAmount = bill + tip 
    }
}

struct TipCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        TipCalculatorView()
    }
}
