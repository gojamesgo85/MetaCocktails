//
//  BuildOrderView.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

struct BuildOrderView: View {
    
    @Binding var isShowingBuildOrder: Bool
    let buildOrder: String
    
    var body: some View {
        NavigationStack {
            VStack{
                
                ScrollView {
                    
                    
                    Spacer()
                    Text(buildOrder)
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(.leading)
                        .padding(.trailing)
                }
                
                
            }
            .navigationTitle("Build Order")
            
        }
        .overlay(Button {
            isShowingBuildOrder = false
        }label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

struct BuildOrderView_Previews: PreviewProvider {
    static var previews: some View {
        BuildOrderView(isShowingBuildOrder: .constant(true), buildOrder: MockData.ramos.buildOrderInstructions ?? "Something went wrong")
    }
}
