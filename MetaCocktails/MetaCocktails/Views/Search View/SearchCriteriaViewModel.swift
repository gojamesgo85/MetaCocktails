//
//  SearchCriteria.swift
//  MetaCocktails
//
//  Created by James on 8/12/23.
//

import SwiftUI

final class SearchCriteriaViewModel: ObservableObject {

    @Published var searchText: String = ""
    @Published var brandPrimaryColors = [Color.brandPrimaryYellow, Color.brandPrimaryOrange, Color.brandPrimaryRed, Color.brandPrimaryPurple, Color.brandPrimaryBlue]

    @Published var cocktailComponents  =  [CocktailComponent(name: CocktailComponentEnum.agedRum.rawValue, isSpirit: true),
                                           CocktailComponent(name: CocktailComponentEnum.shaken.rawValue, isStyle: true),
                                           CocktailComponent(name: CocktailComponentEnum.stirred.rawValue, isStyle: true),
                                           CocktailComponent(name: CocktailComponentEnum.almond.rawValue, isFlavor: true),
                                           CocktailComponent(name: CocktailComponentEnum.aromatic.rawValue, isProfile: true),
                                           CocktailComponent(name: CocktailComponentEnum.bitter.rawValue, isProfile: true),
                                           CocktailComponent(name: CocktailComponentEnum.blackStrapRum.rawValue, isSpirit: true),
                                           CocktailComponent(name: CocktailComponentEnum.bubbly.rawValue, isProfile: true),
                                           CocktailComponent(name: CocktailComponentEnum.citrusy.rawValue, isProfile: true),
                                           CocktailComponent(name: CocktailComponentEnum.cream.rawValue, isFlavor: true),
                                           CocktailComponent(name: CocktailComponentEnum.cucumber.rawValue, isFlavor: true),
                                           CocktailComponent(name: CocktailComponentEnum.eggWhites.rawValue, isFlavor: true),
                                           CocktailComponent(name: CocktailComponentEnum.fizz.rawValue, isStyle: true),
                                           CocktailComponent(name: CocktailComponentEnum.floral.rawValue, isProfile: true),
                                           CocktailComponent(name: CocktailComponentEnum.fruity.rawValue, isProfile: true),
                                           CocktailComponent(name: CocktailComponentEnum.gin.rawValue, isSpirit: true),
                                           CocktailComponent(name: CocktailComponentEnum.ginger.rawValue, isFlavor: true),
                                           CocktailComponent(name: CocktailComponentEnum.honey.rawValue, isFlavor: true),
                                           CocktailComponent(name: CocktailComponentEnum.lastWord.rawValue, isStyle: true),
                                           CocktailComponent(name: CocktailComponentEnum.lemon.rawValue, isFlavor: true),
                                           CocktailComponent(name: CocktailComponentEnum.lime.rawValue, isFlavor: true),
                                           CocktailComponent(name: CocktailComponentEnum.martini.rawValue, isStyle: true),
                                           CocktailComponent(name: CocktailComponentEnum.negroni.rawValue, isStyle: true),
                                           CocktailComponent(name: CocktailComponentEnum.oldFashioned.rawValue, isStyle: true),
                                           CocktailComponent(name: CocktailComponentEnum.orange.rawValue, isFlavor: true),
                                           CocktailComponent(name: CocktailComponentEnum.passionfruit.rawValue, isFlavor: true),
                                           CocktailComponent(name: CocktailComponentEnum.rum.rawValue, isSpirit: true),
                                           CocktailComponent(name: CocktailComponentEnum.silky.rawValue, isProfile: true),
                                           CocktailComponent(name: CocktailComponentEnum.sour.rawValue, isStyle: true),
                                           CocktailComponent(name: CocktailComponentEnum.spicy.rawValue, isProfile: true),
                                           CocktailComponent(name: CocktailComponentEnum.sweet.rawValue, isProfile: true),
                                           CocktailComponent(name: CocktailComponentEnum.tart.rawValue, isProfile: true),
                                           CocktailComponent(name: CocktailComponentEnum.vodka.rawValue, isSpirit: true),
                                           CocktailComponent(name: CocktailComponentEnum.whiteRum.rawValue, isSpirit: true)]

    func printComponents() {
        for cocktailComponent in cocktailComponents {
            print(cocktailComponent.preferenceType.rawValue)
        }
    }
    func matchAllTheThings() {
        printComponents()
        // if searchText is empty, show everything again
        if searchText == "" {
            for cocktail in cocktailComponents {
                cocktail.matchesCurrentSearch = true
            }
             // this forces an update when the search bar is empty, instead of waiting for the user to hit return
            self.objectWillChange.send()
            return
        }

        // if searchText has text, match it and set the viewModel properties accordingly
        for cocktail in cocktailComponents {
            if cocktail.name.contains(searchText) {
                cocktail.matchesCurrentSearch = true
            } else {
                cocktail.matchesCurrentSearch = false
            }
        }
        self.objectWillChange.send()
    }
    
    

    
 
    func selectedPreferredIngredients() -> [CocktailComponent] {
        self.cocktailComponents.filter({ $0.isPreferred})
    }

    func selectedUnwantedIngredients() -> [CocktailComponent] {
        self.cocktailComponents.filter({ $0.isUnwanted})
    }

    func add(_ ingredient: CocktailComponent){
        cocktailComponents.append(ingredient)
    }
    
    func remove(at offsets: IndexSet){
        cocktailComponents.remove(atOffsets: offsets)
    }
}

class CocktailComponent: Identifiable, ObservableObject {

    init(name: String, isFlavor: Bool = false, isProfile: Bool = false, isStyle: Bool = false, isSpirit: Bool = false, matchesCurrentSearch: Bool = true) {
        self.name = name
        self.isSpirit = isSpirit
        self.isFlavor = isFlavor
        self.isStyle = isStyle
        self.isProfile = isProfile
        self.matchesCurrentSearch = matchesCurrentSearch
        
        if isFlavor {
            preferenceType = .flavors
        } else if isStyle {
            preferenceType = .style
        } else if isSpirit {
            preferenceType = .spirits
        } else {
            preferenceType = .profiles
        }     
    }

    @Published var matchesCurrentSearch: Bool
    var id = UUID()
    var name: String
    var isPreferred: Bool = false
    var isUnwanted: Bool = false
    var isSpirit: Bool
    var isFlavor: Bool
    var isProfile: Bool
    var isStyle: Bool
    var preferenceType: PreferenceType
 
}

enum CocktailComponentEnum: String {
    
    /// Ingredients
    case lemon          = "Lemon"
    case lime           = "Lime"
    case cream          = "Heavy Cream"
    case orange         = "Orange"
    case eggWhites      = "Egg Whites"
    case ginger         = "Ginger"
    case honey          = "Honey"
    case passionfruit   = "Passionfruit"
    case cucumber       = "Cucumber"
    case almond         = "Almond"
    
    /// SPIRITS
    case gin            = "Gin"
    case whiteRum       = "White Rum"
    case agedRum        = "Aged Rum"
    case blackStrapRum  = "Black Strap Rum"
    case rum            = "Rum"
    case vodka          = "Vodka"
    case ryeWhiskey     = "Rye Whiskey"
    
    /// PROFILES
    case tart           = "Tart"
    case sweet          = "Sweet"
    case bitter         = "Bitter"
    case spicy          = "Spicy"
    case citrusy        = "Citrusy"
    case aromatic       = "Aromatic"
    case floral         = "Floral"
    case fruity         = "Fruity"
    case creamy         = "Creamy"
    case bubbly         = "Bubbly"
    case silky          = "Silky (Egg whites)"
    
    /// STYLES
    case shaken         = "Shaken"
    case stirred        = "Stirred"
    case martini        = "Martini Variation"
    case oldFashioned   = "Old Fashioned Variation"
    case negroni        = "Negroni Variation"
    case sour           = "Like a sour"
    case fizz           = "Like a fizz"
    case lastWord       = "Last Word Variation"
}

struct SearchTags {
    
    enum Flavor: String {
        
        case lemon          = "Lemon"
        case lime           = "Lime"
        case cream          = "Heavy Cream"
        case orange         = "Orange"
        case eggWhites      = "Egg Whites"
        case ginger         = "Ginger"
        case honey          = "Honey"
        case passionfruit   = "Passionfruit"
        case cucumber       = "Cucumber"
        case almond         = "Almond"
        
    }

    enum Texture: String {
        
        case creamy = "Creamy"
    }

    enum Style: String {
        
        case shaken         = "Shaken"
        case stirred        = "Stirred"
        case martini        = "Martini Variation"
        case oldFashioned   = "Old Fashioned Variation"
        case negroni        = "Negroni Variation"
        case sour           = "Like a sour"
        case fizz           = "Like a fizz"
        case lastWord       = "Last Word Variation"
        
    }

    enum Profile: String {
        
        case tart           = "Tart"
        case sweet          = "Sweet"
        case bitter         = "Bitter"
        case spicy          = "Spicy"
        case citrusy        = "Citrusy"
        case aromatic       = "Aromatic"
        case floral         = "Floral"
        case fruity         = "Fruity"
        case creamy         = "Creamy"
        case bubbly         = "Bubbly"
        case silky          = "Silky (Egg whites)"
        
    }

    
    
}




