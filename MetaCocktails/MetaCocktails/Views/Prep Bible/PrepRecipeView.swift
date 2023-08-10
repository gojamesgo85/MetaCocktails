//
//  PrepRecipeView.swift
//  MetaCocktails
//
//  Created by James on 8/9/23.
//

import SwiftUI

struct PrepRecipeView: View {
    
    @Binding var isShowingPrepRecipe: Bool
    var prepRecipe: String
    
    var body: some View {
        
        
        ScrollView {
            Text(prepRecipe)
             .font(.body)
             .padding(.leading)
             .padding(.trailing)
            
             .padding(40)
             
            Button("Dismiss") {
                isShowingPrepRecipe = false
                print("did something")
            }
            .modifier(StandardButtonStyle())
            
        }
        
    }
        
}

struct PrepRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        PrepRecipeView(isShowingPrepRecipe: .constant(true), prepRecipe: "Recipe")
    }
}
