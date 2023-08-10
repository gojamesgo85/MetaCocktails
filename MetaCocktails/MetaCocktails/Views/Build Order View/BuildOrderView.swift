//
//  BuildOrderView.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

struct BuildOrderView: View {
    
    //@Binding var isShowingBuildOrder: Bool
    let buildOrder: String
    
    var body: some View {
  
        ScrollView {
            Spacer()
            Text(buildOrder)
             .font(.body)
             .padding(.leading)
             .padding(.trailing)
        }
           
      
        
    }
}

struct BuildOrderView_Previews: PreviewProvider {
    static var previews: some View {
        BuildOrderView(buildOrder: MockData.daiquiri.buildOrderInstructions ?? "Something went wrong")
    }
}
