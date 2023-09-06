//
//  Cocktail.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

struct Cocktail: Identifiable {
    
    let id = UUID()
    let name: String

    let image: CocktailImage
    let backgroundColor: Color

    let glasswareType: Glassware
    let garnish: Garnish

    let spec: [CocktailIngredient]
    let buildOrder: Build?
    
    let attribution: String?

    let flavors = [SearchTags.Flavor]()
    let styles = [SearchTags.Style]()
    let textures = [SearchTags.Texture]()
    let profiles = [SearchTags.Profile]()
}

struct MockData: Identifiable {
    @EnvironmentObject var criteria: SearchCriteriaViewModel
    var id: ObjectIdentifier
    
    @State static var mockIngredient: CocktailComponent = CocktailComponent(name: "Mock Ingredient")
    
    
    
  
    
}
