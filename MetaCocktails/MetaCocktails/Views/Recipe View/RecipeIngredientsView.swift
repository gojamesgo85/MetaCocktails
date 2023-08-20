//
//  RecipeIngredientsView.swift
//  MetaCocktails
//
//  Created by James on 8/9/23.
//

import SwiftUI

struct RecipeIngredientsView: View {
    var cocktail: Cocktail
    let recipeSpacing: CGFloat = 2
    var body: some View {

        Text(cocktail.name)
            .font(.title2)

        Text("GW: \(cocktail.glasswareType)")

        ForEach(cocktail.ingredients) { ingredient in
            Text("\(ingredient.value, specifier: "%.2f") oz. \(ingredient.name)")
                .padding(recipeSpacing)
        }

        Text("G: \(cocktail.garnish)")
    }
}

struct RecipeIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeIngredientsView(cocktail: MockData.daiquiri)
    }
}
