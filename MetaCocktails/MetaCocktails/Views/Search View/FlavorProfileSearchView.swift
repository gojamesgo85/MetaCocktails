//
//  FlovorProfileSearchView.swift
//  MetaCocktails
//
//  Created by James on 8/9/23.
//

import SwiftUI

struct FlavorProfileSearchView: View {
    
    //@State var BCSearch = []
    
    var body: some View {
       
            
            VStack{
              
                Button("+ Ingredient") {
                    
                }
                .modifier(StandardButtonStyle())
                .padding()
                
                Button("+ Flavor Profile") {
                    
                }
                .modifier(StandardButtonStyle())
                Spacer()
                Button("Search") {
                    
                }
                
                .modifier(StandardButtonStyle())
            }
        
    }
}

struct FlovorProfileSearchView_Previews: PreviewProvider {
    static var previews: some View {
        FlavorProfileSearchView()
    }
}
