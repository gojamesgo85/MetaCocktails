//
//  FlavorProfiles.swift
//  MetaCocktails
//
//  Created by James on 8/10/23.
//

import SwiftUI

enum FlavorTypes: String {
    
    case ginger = "Ginger"
    case passionfruit = "Passionfruit"
    
    
    
}

enum FlavorProfileNames: String {
    
    
    case tart = "Tart"
    case sweet = "Sweet"
    case bitter = "Bitter"
    case spicy = "Spicy"
    case citrusy = "Citrusy"
    case aromatic = "Aromatic"
    case floral = "Floral"
    case fruity = "Fruity"
    
    
}

struct FlavorProfile: Identifiable {
    
    let id = UUID()
    
    let name: String
    
    
}

struct FlavorProfiles {
    
    let profiles: [FlavorProfile]
    
}


