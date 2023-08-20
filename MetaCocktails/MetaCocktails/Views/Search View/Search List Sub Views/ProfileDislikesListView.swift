//
//  ProfileDislikesListView.swift
//  MetaCocktails
//
//  Created by James on 8/15/23.
//

import SwiftUI

struct ProfileDislikesListView: View {
    @EnvironmentObject var viewModel: SearchCriteriaViewModel

    var body: some View {
        
            SearchBarView(searchText: $viewModel.searchText)
                .navigationTitle("Profile Dislikes")

            List {
                ForEach($viewModel.cocktailComponents) { ingredient in
                    if ingredient.isPreferred.wrappedValue == false && ingredient.isProfile.wrappedValue == true {
                        PreferencesCheckListCell(ingredient: ingredient, isPreferredArray: false)
                            .tint(.red)
                    }
                }
            }
            .listStyle(.plain)
            Spacer()
    }
}

struct ProfileDislikesListView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDislikesListView()
            .environmentObject(SearchCriteriaViewModel())
    }
}
