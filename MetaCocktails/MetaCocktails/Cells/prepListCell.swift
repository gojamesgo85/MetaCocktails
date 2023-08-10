//
//  prepListCell.swift
//  MetaCocktails
//
//  Created by James on 8/9/23.
//

import SwiftUI

struct prepListCell: View {
    
    var prepItem: Prep
    
    var body: some View {
        Text(prepItem.prepIngredientName)
            .font(.title)
    }
}

struct prepListCell_Previews: PreviewProvider {
    static var previews: some View {
        prepListCell(prepItem: prepItemRecipe.cucumberSyrup)
    }
}
