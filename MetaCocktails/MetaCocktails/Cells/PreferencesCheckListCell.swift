//
//  PreferencesCheckListCell.swift
//  MetaCocktails
//
//  Created by James on 8/10/23.
//

import SwiftUI

struct PreferencesCheckListCell: View {
    
    @State var toggleOn = false
    let toggleTitle: String
    
    var body: some View {
        HStack {
            Toggle(toggleTitle, isOn: $toggleOn)
                .padding(.leading)
                .padding(.trailing)
                
        }
    }
}

struct PreferencesCheckListCell_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesCheckListCell(toggleTitle: "Blackberries")
    }
}
