//
//  ContentView.swift
//  SourdoughBuddy
//
//  Created by Julia Ybanez on 4/16/24.
//

import SwiftUI
import Foundation


struct ContentView: View {
    @State private var showOutput = false
    @State private var starterGrams = ""
    @State private var flourGrams = ""
    @State private var waterGrams = ""
    @State private var saltGrams = "" 
    @State private var IngredientName = ""
    @State private var IngredientQuantity = ""
    
    var body: some View {
        TabView {
            InputView()
                .tabItem {
                    Text("Input")
                }
            
            OutputView()
                .tabItem {
                    Text("Output")
                }
        }
        .padding()
        
        
        VStack {
            HStack {
                TextField("Ingredient Name", text: $IngredientName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Quantity (grams)", text: $IngredientQuantity)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Add") {
                    if let quantity = Double(IngredientQuantity) {
                        let Ingredient = CustomIngredient(name: IngredientName, quantity: quantity)
                        IngredientManager.shared.addIngredient(Ingredient)
                        IngredientName = ""
                        IngredientQuantity = ""
                    }
                }
            }
            .padding()
            
            List {
                ForEach(IngredientManager.shared.ingredients, id: \.name) { ingredient in
                    HStack {
                        Text("\(ingredient.name) - \(ingredient.quantity)g")
                        Spacer()
                        Button(action: {
                            // Remove the ingredient from the list
                            if let index = IngredientManager.shared.ingredients.firstIndex(where: { $0.name == ingredient.name }) {
                                deleteIngredient(at: IndexSet(integer: index))
                            }
                        }) {
                            Image(systemName: "trash")
                        }
                        .foregroundColor(.red)
                    }
                }
            }
        }
        .padding()
    }
    func deleteIngredient(at offsets: IndexSet) {
            IngredientManager.shared.ingredients.remove(atOffsets: offsets)
        }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


  
