//
//  SpiritLikesListView.swift
//  MetaCocktails
//
//  Created by James on 8/15/23.
//

import SwiftUI

struct SpiritLikesListView: View {
    
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
