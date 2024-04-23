//
//  OutputView.swift
//  SourdoughBuddy
//
//  Created by Julia Ybanez on 4/16/24.
//

import SwiftUI

struct OutputView: View {
    @ObservedObject var ingredientManager = IngredientManager.shared
    
    var body: some View {
        VStack {
            Text("Ingredient Quantities:")
                .font(.headline)
            
            Text("Starter: \(ingredientManager.starterGrams)")
            Text("Flour: \(ingredientManager.flourGrams)")
            Text("Water: \(ingredientManager.waterGrams)")
            Text("Salt: \(ingredientManager.saltGrams)")
            
            Button(action: {
                // Handle copying ingredient quantities
                // You can implement functionality to copy the ingredient quantities to the clipboard
            }) {
                Text("Copy")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}



#Preview {
    ContentView()
}
