//
//  FlavorDislikesListView.swift
//  MetaCocktails
//
//  Created by James on 8/15/23.
//

import SwiftUI

struct FlavorDislikesListView: View {
    @EnvironmentObject var viewModel: SearchCriteriaViewModel

    var body: some View {
        
            SearchBarView(searchText: $viewModel.searchText)
                .navigationTitle("Flavor Dislikes")

            List {
                ForEach($viewModel.cocktailComponents) { ingredient in
                    if ingredient.isPreferred.wrappedValue == false && ingredient.isFlavor.wrappedValue == true {
                        PreferencesCheckListCell(ingredient: ingredient, isPreferredArray: false)
                            .tint(.red)
                    }
                }
            }
            .listStyle(.plain)
            Spacer()
    } 
}
struct FlavorDislikesListView_Previews: PreviewProvider {
    static var previews: some View {
        FlavorDislikesListView()
            .environmentObject(SearchCriteriaViewModel())
    }
}
