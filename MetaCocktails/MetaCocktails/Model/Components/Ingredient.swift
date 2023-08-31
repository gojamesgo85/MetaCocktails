//
//  Ingredient.swift
//  MetaCocktails
//
//  Created by Matthew Hunt on 8/30/23.
//

import Foundation

struct Ingredient: Identifiable {
    let id = UUID()
    let name: IngredientName
    let value: Double
    let unit: MeasurementUnit
}

enum IngredientName: String {

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
}

enum MeasurementUnit: String {
    case grams          = "grams"
    case fluidOunces    = "oz"
    case teaspoons      = "tsp"
    case disc           = "disc, with flesh"
    case limeQuarters   = "lime, quartered"
    case slices         = "slices"
}


