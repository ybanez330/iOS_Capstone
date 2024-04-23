//
//  IngredientManager.swift
//  SourdoughBuddy
//
//  Created by Julia Ybanez on 4/16/24.
//

import SwiftUI
import Foundation

class IngredientManager: ObservableObject {
    static let shared = IngredientManager()
    
    @Published var starterGrams: String = ""
    @Published var flourGrams: String = ""
    @Published var waterGrams: String = ""
    @Published var saltGrams: String = ""
    
    var ingredients: [CustomIngredient] = []
    
    func addIngredient(_ ingredient: CustomIngredient) {
        ingredients.append(ingredient)
    }
    
    func removeIngredient(at index: Int) {
        ingredients.remove(at: index)
    }
}



#Preview {
    ContentView()
}
