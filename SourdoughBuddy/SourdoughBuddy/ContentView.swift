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
        
        ZStack {
                   // Background color
                   Color(UIColor(red: 0.96, green: 0.91, blue: 0.84, alpha: 1.0))
                       .edgesIgnoringSafeArea(.all) // Extend color to edges
                   
                   // Your logo
                   VStack {
                       Spacer() // Pushes the logo to the top of the screen
                       Image("SourdoughBuddyLogo") // Assuming your image file is named "logo.png"
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(width: 300, height: 300) // Set width and height as needed
                           .padding() // Add padding as needed to position the logo
                   }
              
               }
        
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


  
