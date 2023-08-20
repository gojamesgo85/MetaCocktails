//
//  SpiritLikesListView.swift
//  MetaCocktails
//
//  Created by James on 8/15/23.
//

import SwiftUI

struct SpiritLikesListView: View {

// TODO: Looks like this whole collection of Seach List Sub Views is mostly the same code. See if you can make this into a re-usable struct where you pass in the navigation title and a bool that indicates if you're working with the unwanted or preferred arrays.

    
    @EnvironmentObject var viewModel: SearchCriteriaViewModel
    @State private var query = ""

    var body: some View {
        
        SearchBarView(searchText: $query)
            .navigationTitle("Spirit Preferences")
            .onChange(of: query) { newValue in
                viewModel.search(with: newValue)
            }

        List {
            ForEach($viewModel.cocktailComponents) { ingredient in
                    if ingredient.isUnwanted.wrappedValue == false && ingredient.isSpirit.wrappedValue {
                        PreferencesCheckListCell(ingredient: ingredient, isPreferredArray: true)
                    }
                }
            }
            .listStyle(.plain)
            Spacer()
    }
}

struct SpiritLikesListView_Previews: PreviewProvider {
    static var previews: some View {
        SpiritLikesListView()
            .environmentObject(SearchCriteriaViewModel())
    }
}
