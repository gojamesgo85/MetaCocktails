//
//  GordonsCup.swift
//  MetaCocktails
//
//  Created by Matthew Hunt on 8/30/23.
//

import SwiftUI

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
//origin: Sasha Petraske

let GordonsCup = Cocktail(name: "Gordon's Cup",
                          image: CocktailImage(imageName: "Blackberry Sage Smash"),
                          backgroundColor: Color.brandPrimaryOrange,
                          glasswareType: .doubleOld,
                          garnish: <#T##String#>, ingredients: <#T##[Components.Ingredient]#>, buildOrderInstructions: <#T##String?#>)

