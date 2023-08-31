//
//  CocktailImage.swift
//  MetaCocktails
//
//  Created by Matthew Hunt on 8/29/23.
//

import SwiftUI

// Eventually we'll assemble each cocktail from image assets Alice will make for us which will be a little more involved. This is a placeholder for now.

struct CocktailImage: View {

    var imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 120, height: 120)
            .background(cocktail.backgroundColor)
            .cornerRadius(12)
    }
}

struct CocktailImage_Previews: PreviewProvider {
    static var previews: some View {
        CocktailImage(imageName: "DaiquiriNoBackground")
    }
}
