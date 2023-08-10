//
//  RecipeCard.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

struct RecipeCard: View {
    
    @State var cocktail: Cocktail
    @Binding var isShowingRecipeCard: Bool

    @State private var isShowingBuildOrder = false
    
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(cocktail.imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(12)
            
            
            VStack {
                
               RecipeIngredientsView(cocktail: cocktail)
                    .fontWeight(.semibold)
 
            }
            Spacer()
            if cocktail.buildOrderInstructions != nil {
            
                Button("Build Order") {
                    isShowingBuildOrder = true
                }
                .sheet(isPresented: $isShowingBuildOrder) {
                    BuildOrderView(buildOrder: cocktail.buildOrderInstructions ?? "Something went wrong.")
                }
                .modifier(StandardButtonStyle())
                
            }
            Spacer()

        }
        .frame(width: 340, height: 725)
        .background(Color(.systemGray5))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingRecipeCard = false
        }label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
    
        
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(cocktail: MockData.daiquiri, isShowingRecipeCard: .constant(true))
    }
}

