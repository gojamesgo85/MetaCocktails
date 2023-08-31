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

    let glasswareType: Components.Glassware
    let garnish: String

    let ingredients: [Components.Ingredient]
    let buildOrderInstructions: String?

    let flavors = [SearchTags.Flavor]()
    let styles = [SearchTags.Style]()
    let textures = [SearchTags.Texture]()
    let profiles = [SearchTags.Profile]()
}

struct MockData: Identifiable {
    @EnvironmentObject var criteria: SearchCriteriaViewModel
    var id: ObjectIdentifier

    @State static var mockIngredient: CocktailComponent = CocktailComponent(name: "Mock Ingredient")

//    static let daiquiri = Cocktail(
//                                   glasswareType: .coupe,
//                                   name: "Daiquiri",
//                                   image: CocktailImage(imageName: "DaiquiriNoBackground"),
//                                   buildOrderInstructions: nil,
//                                   ingredients: [CocktailIngredient(name: CocktailComponentEnum.whiteRum.rawValue, value: 2.0),
//                                                 CocktailIngredient(name: IngredientName.lime.rawValue, value: 0.75),
//                                                 CocktailIngredient(name: IngredientName.simple.rawValue, value: 0.75)],
//
//                                   garnish: Garnish.limeWheel.rawValue, backgroundColor: Color.brandPrimaryYellow)
//
//    static let ramos = Cocktail(
//                                glasswareType: .collins,
//                                name: "Ramos Gin Fizz",
//                                image: CocktailImage(imageName:"RamosNoBackground"),
//                                buildOrderInstructions: BuildOrderDescriptions.ramosBuild,
//                                ingredients: [CocktailIngredient(name: CocktailComponentEnum.gin.rawValue, value: 2.0),
//                                              CocktailIngredient(name: IngredientName.lime.rawValue, value: 0.5),
//                                              CocktailIngredient(name: IngredientName.lemon.rawValue, value: 0.5),
//                                              CocktailIngredient(name: IngredientName.simple.rawValue, value: 1.0),
//                                              CocktailIngredient(name: IngredientName.cream.rawValue, value: 1.0),
//                                              CocktailIngredient(name: IngredientName.eggWhites.rawValue, value: 1.25),
//                                              CocktailIngredient(name: IngredientName.sodaWater.rawValue, value: 2.0),
//                                              CocktailIngredient(name: IngredientName.orangeFlowerWater.rawValue, value: 0.01)],
//                                garnish: Garnish.orangePeel.rawValue, backgroundColor: Color.brandPrimaryBlue)
//
//    static let blackberrySageSmash = Cocktail(
//                                              glasswareType: .doubleOld,
//                                              name: "Blackberry Sage Smash",
//                                              image: CocktailImage((imageName: "BBSSNoBackground"),
//                                              buildOrderInstructions: BuildOrderDescriptions.bBSSBuild,
//                                              ingredients: [CocktailIngredient(name: CocktailComponentEnum.ryeWhiskey.rawValue, value: 2.0),
//                                                            CocktailIngredient(name: IngredientName.lemon.rawValue, value: 0.75),
//                                                            CocktailIngredient(name: IngredientName.simple.rawValue, value: 0.75),],
//                                              garnish: "Blackberry and a sage leaf.", backgroundColor: Color.brandPrimaryRed)
//}

/// Some weird cocktails:


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

