//
//  SearchCriteria.swift
//  MetaCocktails
//
//  Created by James on 8/12/23.
//

import SwiftUI

final class SearchCriteriaViewModel: ObservableObject {
    
    @Published var cocktailComponents  =  [cocktailComponent(name: cocktailComponentEnums.agedRum.rawValue, isSpirit: true),
                                           cocktailComponent(name: cocktailComponentEnums.shaken.rawValue, isStyle: true),
                                           cocktailComponent(name: cocktailComponentEnums.stirred.rawValue, isStyle: true),
                                           cocktailComponent(name: cocktailComponentEnums.almond.rawValue, isFlavor: true),
                                           cocktailComponent(name: cocktailComponentEnums.aromatic.rawValue, isProfile: true),
                                           cocktailComponent(name: cocktailComponentEnums.bitter.rawValue, isProfile: true),
                                           cocktailComponent(name: cocktailComponentEnums.blackStrapRum.rawValue, isSpirit: true),
                                           cocktailComponent(name: cocktailComponentEnums.bubbly.rawValue, isProfile: true),
                                           cocktailComponent(name: cocktailComponentEnums.citrusy.rawValue, isProfile: true),
                                           cocktailComponent(name: cocktailComponentEnums.cream.rawValue, isFlavor: true),
                                           cocktailComponent(name: cocktailComponentEnums.cucumber.rawValue, isFlavor: true),
                                           cocktailComponent(name: cocktailComponentEnums.eggWhites.rawValue, isFlavor: true),
                                           cocktailComponent(name: cocktailComponentEnums.fizz.rawValue, isStyle: true),
                                           cocktailComponent(name: cocktailComponentEnums.floral.rawValue, isProfile: true),
                                           cocktailComponent(name: cocktailComponentEnums.fruity.rawValue, isProfile: true),
                                           cocktailComponent(name: cocktailComponentEnums.gin.rawValue, isSpirit: true),
                                           cocktailComponent(name: cocktailComponentEnums.ginger.rawValue, isFlavor: true),
                                           cocktailComponent(name: cocktailComponentEnums.honey.rawValue, isFlavor: true),
                                           cocktailComponent(name: cocktailComponentEnums.lastWord.rawValue, isStyle: true),
                                           cocktailComponent(name: cocktailComponentEnums.lemon.rawValue, isFlavor: true),
                                           cocktailComponent(name: cocktailComponentEnums.lime.rawValue, isFlavor: true),
                                           cocktailComponent(name: cocktailComponentEnums.martini.rawValue, isStyle: true),
                                           cocktailComponent(name: cocktailComponentEnums.negroni.rawValue, isStyle: true),
                                           cocktailComponent(name: cocktailComponentEnums.oldFashioned.rawValue, isStyle: true),
                                           cocktailComponent(name: cocktailComponentEnums.orange.rawValue, isFlavor: true),
                                           cocktailComponent(name: cocktailComponentEnums.passionfruit.rawValue, isFlavor: true),
                                           cocktailComponent(name: cocktailComponentEnums.rum.rawValue, isSpirit: true),
                                           cocktailComponent(name: cocktailComponentEnums.silky.rawValue, isProfile: true),
                                           cocktailComponent(name: cocktailComponentEnums.sour.rawValue, isStyle: true),
                                           cocktailComponent(name: cocktailComponentEnums.spicy.rawValue, isProfile: true),
                                           cocktailComponent(name: cocktailComponentEnums.sweet.rawValue, isProfile: true),
                                           cocktailComponent(name: cocktailComponentEnums.tart.rawValue, isProfile: true),
                                           cocktailComponent(name: cocktailComponentEnums.vodka.rawValue, isSpirit: true),
                                           cocktailComponent(name: cocktailComponentEnums.whiteRum.rawValue, isSpirit: true)]
    
    @Published var searchText: String = ""
    @Published var filteredComponents = [cocktailComponent]()
    
    func search(with query: String = "") {
        
        filteredComponents = query.isEmpty ? cocktailComponents : cocktailComponents.filter { $0.name.localizedCaseInsensitiveContains(query)}
        
       
    }
    
    func selectedPreferredIngredients() -> [cocktailComponent] {
        
        self.cocktailComponents.filter({ $0.isPreferred})
        
    }
    func selectedUnwantedIngredients() -> [cocktailComponent] {
        
        self.cocktailComponents.filter({ $0.isUnwanted})
        
    }
   
    
    
    func add(_ ingredient: cocktailComponent){
        cocktailComponents.append(ingredient)
    }
    
    func remove(at offsets: IndexSet){
        cocktailComponents.remove(atOffsets: offsets)
    }
    
}

struct cocktailComponent: Identifiable {
    
    var id = UUID()
    var name: String
    var isPreferred: Bool = false
    var isUnwanted: Bool = false
    var isSpirit: Bool = false
    var isFlavor: Bool  = false
    var isProfile: Bool = false
    var isStyle: Bool = false
 
}

enum cocktailComponentEnums: String {
    
    /// FLAVORS
    case lemon             = "Lemon"
    case lime              = "Lime"
    case cream             = "Heavy Cream"
    case orange            = "Orange"
    case eggWhites         = "Egg Whites"
    case ginger            = "Ginger"
    case honey             = "Honey"
    case passionfruit      = "Passionfruit"
    case cucumber          = "Cucumber"
    case almond            = "Almond"
    
    /// SPIRITS
    case gin = "Gin"
    case whiteRum = "White Rum"
    case agedRum = "Aged Rum"
    case blackStrapRum = "Black Strap Rum"
    case rum = "Rum"
    case vodka = "Vodka"
    
    /// PROFILES
    case tart = "Tart"
    case sweet = "Sweet"
    case bitter = "Bitter"
    case spicy = "Spicy"
    case citrusy = "Citrusy"
    case aromatic = "Aromatic"
    case floral = "Floral"
    case fruity = "Fruity"
    case creamy = "Creamy"
    case bubbly = "Bubbly"
    case silky = "Silky (Egg whites)"
    
    /// STYLES
    case shaken = "Shaken"
    case stirred = "Stirred"
    case martini = "Martini Variation"
    case oldFashioned = "Old Fashioned Variation"
    case negroni = "Negroni Variation"
    case sour = "Like a sour"
    case fizz = "Like a fizz"
    case lastWord = "Last Word Variation"
    
}

