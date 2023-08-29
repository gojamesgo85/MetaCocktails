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

/// Some weird cocktails:

//Pornstar Martini

//* 1.5 oz Vodka 
//* 0.5 oz Giffard Passion Fruit Liqueur 
//* 0.75 oz Lime Juice 
//* 0.5 oz Vanilla syrup 
//* 0.25 oz Passion Fruit syrup 
//
//Method: Shake
//Glassware: Coupe
//Garnish: 2 oz of Sparkling Wine in shot glass on side.
//Origin: Douglas Ankrah, Townhouse Bar, London, Early 00s


//El Guapo
//
//* 2 oz Blacno Tequila 
//* 1/2 lime quartered 
//* 0.75 oz Simple Syrup 
//* 1 tsp Cholula 
//
//method: muddle / shake / dump
//glassware: double old fashioned
//garnish: salt and cracked black pepper


//Gordon’s Cup
//
//* 2 oz London Dry Gin 
//* 1/2 Lime quartered 
//* 0.75 oz Simple Syrup 
//* 3 slices cucumber 
//
//method: muddle / shake / dump
//glassware: double old fashioned
//garnish: salt and cracked black pepper


//Breakfast Martini
//
//* 1.5 oz London Dry Gin 
//* 0.5 oz Lemon Juice 
//* 0.5 oz Cointreau 
//* 1 tsp Orange marmalade 
//
//method: shake / fine strain
//glassware: nick & nora
//garnish: orange twist


//Zombie
//
//* 1 oz 151pf Demerara Rum 
//* 1 oz Overproof Jamaican Rum 
//* 1 oz White Rum 
//* 1 oz Don’s Mix 
//* 0.75 oz Lime 
//* 0.5 oz Velvet Falernum 
//* 0.25 oz Grenadine 
//* 2 dash Absinthe 
//* 1 dash angostura 
//
//Method: short shake / strain
//Glass: tiki mug
//Garnish: mint / orchid


//Queen's Park Swizzle
//
//* 2 oz Aged Demerara Rum  
//* 1 oz Lime Juice  
//* 0.75 oz Simple Syrup  
//* 10 mint leaves  
//
//Method: whip / dump / ice / layer Angostura / Peychaud's Bitters
//Glass:  pilsner / crushed ice
//Garnish:  mint sprig


//Ti Punch
//
//* 2 oz Rhum Agricole Blanc 
//* 1 tsp Cane syrup 
//* 1 lime disc, with flesh 
//
//Method: built in glass: muddle lime disc with syrup / add rum / add cracked ice / stir
//Glass: single old fashioned
//Garnish: none

