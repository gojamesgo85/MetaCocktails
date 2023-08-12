//
//  IngredientDislikesChecklist.swift
//  MetaCocktails
//
//  Created by James on 8/10/23.
//

import SwiftUI

struct IngredientDislikesChecklist: View {
    
    var allIngredients: AllOfTheIngredients
    
    var body: some View {
        NavigationView {
            VStack{
                SearchBarView()
                    .navigationTitle("Ingredient Dislikes")
                List {
                    ForEach(allIngredients.ingredients) { ingredient in
                        
                        PreferencesCheckListCell(toggleTitle: ingredient.name)
                            .tint(.red)
                    }
                }
                .listStyle(.plain)
                Spacer() 
            }
        }
    }
}

struct IngredientDislikesChecklist_Previews: PreviewProvider {
    static var previews: some View {
        IngredientDislikesChecklist(allIngredients: MockData.allOfTheCocktailIngredients)
    }
}
