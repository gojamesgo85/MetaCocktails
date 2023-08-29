//
//  CocktailListViewModel.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

final class CocktailListViewModel: ObservableObject {
    
    @Published var cocktails: [Cocktail] = [MockData.daiquiri, MockData.ramos, MockData.blackberrySageSmash]
    @Published var isShowingRecipeCard = false
    @Published var selectedCocktail: Cocktail?
    @Published var isShowingBuildOrderButton = false
    
}
