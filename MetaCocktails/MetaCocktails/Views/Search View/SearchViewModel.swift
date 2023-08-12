//
//  SearchViewModel.swift
//  MetaCocktails
//
//  Created by James on 8/10/23.
//

import SwiftUI

final class SearchViewModel: ObservableObject {
    
    
    @Published var isShowingFlavorProfiles = false
    @Published var isShowingIngredientOptions = false
    
    
    
    
}

struct preferredIngredients: Identifiable {
    
    let id = UUID()
    let name: cocktailIngredients
    
}
