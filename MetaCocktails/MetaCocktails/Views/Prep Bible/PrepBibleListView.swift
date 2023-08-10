//
//  PrepBible.swift
//  MetaCocktails
//
//  Created by James on 8/9/23.
//

import SwiftUI

struct PrepBibleListView: View {
    
    @StateObject var prepViewModel = PrepBibleViewModel()
    
    
    var body: some View {
        
        VStack {
            NavigationView {
                
                List(prepViewModel.prepIngredients) { prepItem in
                    prepListCell(prepItem: prepItem)
                    
                        .onTapGesture {
                            prepViewModel.isShowingPrepRecipe = true
                            prepViewModel.selectedPrepIngredient = prepItem
                            
                            print("tab was tapped")
                            
                        }
                }
                .navigationTitle("Prep Ingredients ⏲️")
                .listStyle(.plain)
                .disabled(prepViewModel.isShowingPrepRecipe)
            }
            if prepViewModel.isShowingPrepRecipe {
                PrepRecipeView(isShowingPrepRecipe: $prepViewModel.isShowingPrepRecipe, prepRecipe: prepViewModel.selectedPrepIngredient!.prepRecipe)
                
            }
            
        }
        
        
        
    }
        
}

struct PrepBible_Previews: PreviewProvider {
    static var previews: some View {
        PrepBibleListView()
    }
}
