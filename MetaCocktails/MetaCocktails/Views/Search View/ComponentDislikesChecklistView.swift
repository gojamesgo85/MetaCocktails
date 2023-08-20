//
//  IngredientDislikesChecklist.swift
//  MetaCocktails
//
//  Created by James on 8/10/23.
//

import SwiftUI

struct ComponentDislikesChecklistView: View {
    
    @EnvironmentObject var viewModel: SearchCriteriaViewModel
    @Binding var isShowingIngredientDislikesList: Bool
    @State private var selectedList: DislikedTypes = .spirits

    var body: some View {
        
        NavigationView {

            VStack{

                Picker("Choose a preferences list", selection: $selectedList){
                    ForEach(DislikedTypes.allCases, id: \.self) {
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(.segmented)
                .foregroundColor(Color.red)
                .padding()

                ChosenDislikesListView(selectedType: selectedList)
            }
        }
        .overlay(Button {
            isShowingIngredientDislikesList = false
        }label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

enum DislikedTypes: String, CaseIterable {
    
    case spirits  = "Spirits"
    case profiles = "Profiles"
    case flavors  = "Flavors"
}

struct ChosenDislikesListView: View {
    
    var selectedType: DislikedTypes
    
    var body: some View {
        switch selectedType {
        case .spirits:
            SpiritDislikesListView()
        case .profiles:
            ProfileDislikesListView()
        case .flavors:
            FlavorDislikesListView()
        }
    }
}








struct IngredientDislikesChecklist_Previews: PreviewProvider {
    static var previews: some View {
        ComponentDislikesChecklistView(isShowingIngredientDislikesList: .constant(true))
            .environmentObject(SearchCriteriaViewModel())
    }
}
