//
//  IngredientLikesChecklist.swift
//  MetaCocktails
//
//  Created by James on 8/10/23.
//

import SwiftUI

struct ComponentLikesChecklistView: View {
    
    
    @EnvironmentObject var viewModel: SearchCriteriaViewModel
    @Binding var isShowingIngredientsList: Bool
    @State private var selectedList: PreferenceType = .spirits

    var body: some View {
        
        NavigationView {
            VStack{
                Picker("Choose a preferences list", selection: $selectedList){
                    ForEach(PreferenceType.allCases, id: \.self) {
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(.segmented)
                .foregroundColor(Color.red)
                .padding()
                ChosenLikesListView(selectedLikesType: selectedList)
            }
        }
        
        .overlay(Button {
            isShowingIngredientsList = false
        }label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}
enum PreferenceType: String, CaseIterable {
    
    case spirits  = "Spirits"
    case profiles = "Profiles"
    case flavors  = "Flavors"
    case style    = "Style"
    
}

struct ChosenLikesListView: View {
    
    var selectedLikesType: PreferenceType
    
    var body: some View {
        switch selectedLikesType {
        case .spirits:
            SpiritLikesListView()
        case .profiles:
            ProfileLikesListView()
        case .flavors:
            FlavorLikesListView()
        case .style:
            StylePreferencesListView()
        }
    }
}

struct IngredientLikesChecklist_Previews: PreviewProvider {
    static var previews: some View {
        ComponentLikesChecklistView(isShowingIngredientsList: .constant(true))
            .environmentObject(SearchCriteriaViewModel())
    }
}




