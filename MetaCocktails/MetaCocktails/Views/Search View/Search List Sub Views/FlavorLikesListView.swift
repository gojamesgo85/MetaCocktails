//
//  FlavorLikesListView.swift
//  MetaCocktails
//
//  Created by James on 8/15/23.
//

import SwiftUI

struct FlavorLikesListView: View {
    @EnvironmentObject var viewModel: SearchCriteriaViewModel

    var body: some View {
        
        SearchBarView(searchText: $viewModel.searchText)
                .navigationTitle("Flavor Preferences")
            List {
                
                ForEach($viewModel.cocktailComponents) { ingredient in
                    
                    if ingredient.isUnwanted.wrappedValue == false && ingredient.isFlavor.wrappedValue == true {
                        
                        PreferencesCheckListCell(ingredient: ingredient, isPreferredArray: true)
                    }
                }
            }
            
            .listStyle(.plain)
            Spacer()
            
    }
    
    
}

struct FlavorLikesListView_Previews: PreviewProvider {
    static var previews: some View {
        FlavorLikesListView()
            .environmentObject(SearchCriteriaViewModel())
    }
}
