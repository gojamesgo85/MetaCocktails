//
//  CocktailListViewModel.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

final class CocktailListViewModel: ObservableObject {

    static let shared = CocktailListViewModel()
    
    @Published var cocktails: [Cocktail] = [daiquiri, ramosGinFizz, blackberrySageSmash]
    @Published var isShowingRecipeCard = false
    @Published var selectedCocktail: Cocktail?
    @Published var isShowingBuildOrderButton = false
}
