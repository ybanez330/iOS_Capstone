//
//  InputView.swift
//  SourdoughBuddy
//
//  Created by Julia Ybanez on 4/16/24.
//

import SwiftUI

struct InputView: View {
    @State private var numberOfLoaves = ""
    @State private var starterGrams = ""
    @State private var flourGrams = ""
    @State private var waterGrams = ""
    @State private var saltGrams = ""
    
    var body: some View {
        VStack {
            TextField("Number of Loaves", text: $numberOfLoaves)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)
            
            Button(action: {
                calculateIngredientQuantities()
            }) {
                Text("Generate")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
    
    private func calculateIngredientQuantities() {
        guard let numberOfLoavesInt = Int(numberOfLoaves) else {
            print("Error: Invalid number of loaves")
            return
        }
        
        // Calculate ingredient quantities based on the provided recipe and number of loaves
        print("Number of Loaves: \(numberOfLoavesInt)")
        
        let starterPerLoaf = 100
        let flourPerLoaf = 500
        let waterPerLoaf = 350
        let saltPerLoaf = 10
        
        let totalStarterGrams = starterPerLoaf * numberOfLoavesInt
        let totalFlourGrams = flourPerLoaf * numberOfLoavesInt
        let totalWaterGrams = waterPerLoaf * numberOfLoavesInt
        let totalSaltGrams = saltPerLoaf * numberOfLoavesInt
        
        // Update IngredientManager
        IngredientManager.shared.starterGrams = "\(totalStarterGrams)g"
        IngredientManager.shared.flourGrams = "\(totalFlourGrams)g"
        IngredientManager.shared.waterGrams = "\(totalWaterGrams)g"
        IngredientManager.shared.saltGrams = "\(totalSaltGrams)g"
        
        // Print calculated ingredient quantities for debugging
        print("Starter Grams: \(starterGrams)")
        print("Flour Grams: \(flourGrams)")
        print("Water Grams: \(waterGrams)")
        print("Salt Grams: \(saltGrams)")
    }
}


#Preview {
    ContentView()
}
