//
//  Cocktail.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

enum cocktailIngredients: String {
    
    
    

    case lemon             = "Lemon Juice"
    case lime              = "Lime Juice"
    case cream             = "Heavy Cream"
    case simple            = "Simple Syrup (1:1)"
    case orangeFlowerWater = "Orange Flower Water"
    case sodaWater         = "Soda Water"
    case eggWhites         = "Egg Whites"
    case gingerSyrup       = "Ginger Syrup"
    case honeySyrup        = "Honey Syrup"
    case richDem           = "Rich Demerara Syrup (2:1)"
    case passionfruitSyrup = "Passionfruit Syrup"
    case cucumberSyrup     = "Cucumber Syrup"
    case orgeat            = "Orgeat"
    

    case gin = "Gin"
    case whiteRum = "White Rum"
    case agedRum = "Aged Rum"
    case blackStrapRum = "Black Strap Rum"
}




enum glassware: String {
    case coupe = "Coupe"
    case collins = "Collins"
}

enum garnish: String {
    case orangePeel = "Orange Peel"
    case limeWheel = "Lime Wheel"
}

struct Cocktail: Identifiable {
    
    let id: Int
    let glasswareType: String
    let name: String
    let imageName: String
    let buildOrderInstructions: String?
    let ingredients: [CocktailIngredient]
    let garnish: String
    
}

struct AllOfTheIngredients: Identifiable {
    
    let id: Int
    let ingredients: [SingleIngredients]
}

struct SingleIngredients: Identifiable {
    var id = UUID()
    let name: String
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
                                   ingredients: [CocktailIngredient(name: cocktailIngredients.whiteRum.rawValue, value: 2.0),
                                                 CocktailIngredient(name: cocktailIngredients.lime.rawValue, value: 0.75),
                                                 CocktailIngredient(name: cocktailIngredients.simple.rawValue, value: 0.75)],
                                   garnish: garnish.limeWheel.rawValue)
    
 
    
    static let ramos = Cocktail(id: 0002,
                                glasswareType: glassware.collins.rawValue,
                                name: "Ramos Gin Fizz",
                                imageName: "ramos-cartoon",
                                buildOrderInstructions: BuildOrderDescriptions.ramosBuild,
                                ingredients: [CocktailIngredient(name: cocktailIngredients.gin.rawValue, value: 2.0),
                                              CocktailIngredient(name: cocktailIngredients.lime.rawValue, value: 0.5),
                                              CocktailIngredient(name: cocktailIngredients.lemon.rawValue, value: 0.5),
                                              CocktailIngredient(name: cocktailIngredients.simple.rawValue, value: 1.0),
                                              CocktailIngredient(name: cocktailIngredients.cream.rawValue, value: 1.0),
                                              CocktailIngredient(name: cocktailIngredients.eggWhites.rawValue, value: 1.25),
                                              CocktailIngredient(name: cocktailIngredients.sodaWater.rawValue, value: 2.0),
                                              CocktailIngredient(name: cocktailIngredients.orangeFlowerWater.rawValue, value: 0.01)],
                                garnish: garnish.orangePeel.rawValue)

    
    static let allOfTheCocktailIngredients = AllOfTheIngredients(id: 0004, ingredients: [SingleIngredients(name: cocktailIngredients.gin.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.agedRum.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.whiteRum.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.blackStrapRum.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.cream.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.gingerSyrup.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.honeySyrup.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.simple.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.richDem.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.eggWhites.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.orangeFlowerWater.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.passionfruitSyrup.rawValue),
                                                                                            SingleIngredients(name: cocktailIngredients.orgeat.rawValue), ])
    
    static let flavorProfiles = FlavorProfiles(profiles: [FlavorProfile(name: FlavorProfileNames.floral.rawValue),
                                                          FlavorProfile(name: FlavorProfileNames.sweet.rawValue),
                                                          FlavorProfile(name: FlavorProfileNames.tart.rawValue),
                                                          FlavorProfile(name: FlavorProfileNames.bitter.rawValue),
                                                          FlavorProfile(name: FlavorProfileNames.citrusy.rawValue),
                                                          FlavorProfile(name: FlavorProfileNames.fruity.rawValue),
                                                          FlavorProfile(name: FlavorProfileNames.aromatic.rawValue),
                                                          FlavorProfile(name: FlavorProfileNames.spicy.rawValue),])
    
}
