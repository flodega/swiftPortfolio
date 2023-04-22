//
//  ContentView.swift
//  Tip Calculator
//
//  Created by florian houndjahoue on 4/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            VStack{
                NavigationLink(destination: TipCalculatorView()) {
                    Text("Tip Calculator")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
               // Spacer()
            }.navigationTitle(Text("Welcome to the tip calculator")
                .font(.largeTitle)
                .foregroundColor(.blue)
                
            )
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
