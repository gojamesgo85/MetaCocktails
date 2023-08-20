//
//  Cocktail.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

struct Cocktail: Identifiable {
    
    let id: Int
    let glasswareType: String
    let name: String
    let imageName: String
    let buildOrderInstructions: String?
    let ingredients: [CocktailIngredient]
    let garnish: String
    
}

struct CocktailIngredient: Identifiable {
    
    var id = UUID()
    let name: String
    let value: Double
}

struct MockData: Identifiable {
    
    var id: ObjectIdentifier

    @State static var mockIngredient: CocktailComponent = CocktailComponent(name: "Mock Ingredient")

    static let daiquiri = Cocktail(id: 0001,
                                   glasswareType: Glassware.coupe.rawValue,
                                   name: "Daiquiri",
                                   imageName: "Daiquiri-1",
                                   buildOrderInstructions: nil,
                                   ingredients: [CocktailIngredient(name: CocktailComponentEnum.whiteRum.rawValue, value: 2.0),
                                                 CocktailIngredient(name: CocktailIngredientEnums.lime.rawValue, value: 0.75),
                                                 CocktailIngredient(name: CocktailIngredientEnums.simple.rawValue, value: 0.75)],
                                   garnish: Garnish.limeWheel.rawValue)

    static let ramos = Cocktail(id: 0002,
                                glasswareType: Glassware.collins.rawValue,
                                name: "Ramos Gin Fizz",
                                imageName: "ramos-cartoon",
                                buildOrderInstructions: BuildOrderDescriptions.ramosBuild,
                                ingredients: [CocktailIngredient(name: CocktailComponentEnum.gin.rawValue, value: 2.0),
                                              CocktailIngredient(name: CocktailIngredientEnums.lime.rawValue, value: 0.5),
                                              CocktailIngredient(name: CocktailIngredientEnums.lemon.rawValue, value: 0.5),
                                              CocktailIngredient(name: CocktailIngredientEnums.simple.rawValue, value: 1.0),
                                              CocktailIngredient(name: CocktailIngredientEnums.cream.rawValue, value: 1.0),
                                              CocktailIngredient(name: CocktailIngredientEnums.eggWhites.rawValue, value: 1.25),
                                              CocktailIngredient(name: CocktailIngredientEnums.sodaWater.rawValue, value: 2.0),
                                              CocktailIngredient(name: CocktailIngredientEnums.orangeFlowerWater.rawValue, value: 0.01)],
                                garnish: Garnish.orangePeel.rawValue)
}

