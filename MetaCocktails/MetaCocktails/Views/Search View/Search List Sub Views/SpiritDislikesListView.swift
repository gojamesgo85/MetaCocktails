//
//  SpiritDislikesListView.swift
//  MetaCocktails
//
//  Created by James on 8/15/23.
//

import SwiftUI

struct SpiritDislikesListView: View {
    
    @EnvironmentObject var viewModel: SearchCriteriaViewModel
    @State private var query = ""
    var body: some View {
        
        SearchBarView(searchText: $query)
            .navigationTitle("Spirit Dislikes")
//            .onChange(of: query) { newQuery in
//                viewModel.search(with: newQuery)
//            }
        List {
            
            ForEach($viewModel.cocktailComponents) { ingredient in
                
                if ingredient.isPreferred.wrappedValue == false && ingredient.isSpirit.wrappedValue == true{
                    
                    PreferencesCheckListCell(ingredient: ingredient, isPreferredArray: false)
                        .tint(.red)
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
struct SpiritDislikesListView_Previews: PreviewProvider {
    static var previews: some View {
        SpiritDislikesListView()
            .environmentObject(SearchCriteriaViewModel())
    }
}
