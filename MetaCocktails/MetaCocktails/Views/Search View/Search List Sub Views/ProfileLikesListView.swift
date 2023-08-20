//
//  ProfileLikesListView.swift
//  MetaCocktails
//
//  Created by James on 8/15/23.
//

import SwiftUI

struct ProfileLikesListView: View {
    
    @EnvironmentObject var viewModel: SearchCriteriaViewModel
    @State private var query = ""
    var body: some View {
        
        SearchBarView(searchText: $query)
                .navigationTitle("Profile Preferences")

            List {
                ForEach($viewModel.cocktailComponents) { ingredient in
                    if ingredient.isUnwanted.wrappedValue == false && ingredient.isProfile.wrappedValue == true {
                        PreferencesCheckListCell(ingredient: ingredient, isPreferredArray: true)
                    }
                }
            }
            .listStyle(.plain)
        
            Spacer()
//            .onAppear{
//                viewModel.search()
//            }
    }
}
struct ProfileLikesListView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileLikesListView()
    }
}
