//
//  CocktailListCell.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

struct CocktailListCell: View {
    let cocktail: Cocktail
    let backgroundColor: Color
    
    var body: some View {

        HStack {
            Image(cocktail.imageName)
                .resizable()
                .frame(width: 90, height: 90)
                .background(backgroundColor)
                .cornerRadius(12)
            Text(cocktail.name)
                .font(.title)
                .fontDesign(.serif)
            
        }
    }
}

struct CocktailListCell_Previews: PreviewProvider {
    static var previews: some View {
        CocktailListCell(cocktail: MockData.daiquiri, backgroundColor: Color.brandPrimaryRed )
    }
}
