//
//  PrepBibleViewModel.swift
//  MetaCocktails
//
//  Created by James on 8/9/23.
//

import SwiftUI


final class PrepBibleViewModel: ObservableObject {
    
    @Published var isShowingPrepRecipe = false
    @Published var prepIngredients: [Prep] = [prepItemRecipe.cucumberSyrup, prepItemRecipe.gingerSyrup, prepItemRecipe.orgeat, prepItemRecipe.richDem]
    @Published var selectedPrepIngredient: Prep?
    
    
}
