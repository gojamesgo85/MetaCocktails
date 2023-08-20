//
//  StylePreferencesListView.swift
//  MetaCocktails
//
//  Created by James on 8/15/23.
//

import SwiftUI

struct StylePreferencesListView: View {
    @EnvironmentObject var viewModel: SearchCriteriaViewModel

    var body: some View {
        
        SearchBarView(searchText: $viewModel.searchText)
                .navigationTitle("Style Preferences")

            List {
                ForEach($viewModel.cocktailComponents) { ingredient in
                    if ingredient.isUnwanted.wrappedValue == false && ingredient.isStyle.wrappedValue == true {
                        PreferencesCheckListCell(ingredient: ingredient, isPreferredArray: true)
                    }
                }
            }
            .listStyle(.plain)
            Spacer()
    }
}


struct StylePreferencesListView_Previews: PreviewProvider {
    static var previews: some View {
        StylePreferencesListView()
            .environmentObject(SearchCriteriaViewModel())
    }
}
