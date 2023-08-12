//
//  IngredientLikesChecklist.swift
//  MetaCocktails
//
//  Created by James on 8/10/23.
//

import SwiftUI

struct IngredientLikesChecklist: View {
    
    @State private var ingredientSearch = ""
    var allIngredients: AllOfTheIngredients
    
    
    var body: some View {
        
        NavigationView {
            VStack{
                SearchBarView()
                    .navigationTitle("Ingredient Preferences")
                List {
                    
                    ForEach(allIngredients.ingredients) { ingredient in
                        
                        PreferencesCheckListCell(toggleTitle: ingredient.name)

                    }
                }
                .listStyle(.plain)
                Spacer()
            }
        }
    }
}

struct IngredientLikesChecklist_Previews: PreviewProvider {
    static var previews: some View {
        IngredientLikesChecklist(allIngredients: MockData.allOfTheCocktailIngredients)
    }
}
