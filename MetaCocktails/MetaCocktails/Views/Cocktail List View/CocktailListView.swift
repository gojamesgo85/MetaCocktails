//
//  CocktailListView.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

struct CocktailListView: View {

    @StateObject var viewModel = CocktailListViewModel()

    var body: some View {
        ZStack {

            NavigationView {

                List(viewModel.cocktails) { cocktail in
                    CocktailListCell(cocktail: cocktail)
                    
                        .onTapGesture {
                            viewModel.selectedCocktail = cocktail
                            viewModel.isShowingRecipeCard = true
                            print("tab was tapped")
                        }
                }
                .navigationTitle("Cocktails A-Z")
                .listStyle(.plain)
                .disabled(viewModel.isShowingRecipeCard)
            }
            .blur(radius: viewModel.isShowingRecipeCard ? 20 : 0)

            if viewModel.isShowingRecipeCard {
                RecipeCard(cocktail: viewModel.selectedCocktail!, isShowingRecipeCard: $viewModel.isShowingRecipeCard)
            }
        }
    }
}

struct CocktailListView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailListView()
    }
}
