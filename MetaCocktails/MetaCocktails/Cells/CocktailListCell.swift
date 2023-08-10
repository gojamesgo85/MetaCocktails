//
//  CocktailListCell.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

struct CocktailListCell: View {
    let cocktail: Cocktail
    
    var body: some View {
        HStack {
            Image(cocktail.imageName)
                .resizable()
                .frame(width: 90, height: 90)
                .cornerRadius(12)
                .padding()
            Text(cocktail.name)
                .font(.title)
        }
        
    }
}

struct CocktailListCell_Previews: PreviewProvider {
    static var previews: some View {
        CocktailListCell(cocktail: MockData.daiquiri)
    }
}
