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
   
  

    static let daiquiri = Cocktail(id: 0001,
                                   glasswareType: glassware.coupe.rawValue,
                                   name: "Daiquiri",
                                   imageName: "Daiquiri-1",
                                   buildOrderInstructions: nil,
                                   ingredients: [CocktailIngredient(name: cocktailComponentEnums.whiteRum.rawValue, value: 2.0),
                                                 CocktailIngredient(name: cocktailIngredientEnums.lime.rawValue, value: 0.75),
                                                 CocktailIngredient(name: cocktailIngredientEnums.simple.rawValue, value: 0.75)],
                                   garnish: garnish.limeWheel.rawValue)
    
 
    
    static let ramos = Cocktail(id: 0002,
                                glasswareType: glassware.collins.rawValue,
                                name: "Ramos Gin Fizz",
                                imageName: "ramos-cartoon",
                                buildOrderInstructions: BuildOrderDescriptions.ramosBuild,
                                ingredients: [CocktailIngredient(name: cocktailComponentEnums.gin.rawValue, value: 2.0),
                                              CocktailIngredient(name: cocktailIngredientEnums.lime.rawValue, value: 0.5),
                                              CocktailIngredient(name: cocktailIngredientEnums.lemon.rawValue, value: 0.5),
                                              CocktailIngredient(name: cocktailIngredientEnums.simple.rawValue, value: 1.0),
                                              CocktailIngredient(name: cocktailIngredientEnums.cream.rawValue, value: 1.0),
                                              CocktailIngredient(name: cocktailIngredientEnums.eggWhites.rawValue, value: 1.25),
                                              CocktailIngredient(name: cocktailIngredientEnums.sodaWater.rawValue, value: 2.0),
                                              CocktailIngredient(name: cocktailIngredientEnums.orangeFlowerWater.rawValue, value: 0.01)],
                                garnish: garnish.orangePeel.rawValue)

    

    

    
    
}

