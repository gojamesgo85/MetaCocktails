//
//  MetaCocktailsApp.swift
//  MetaCocktails
//
//  Created by James on 8/8/23.
//

import SwiftUI

@main
struct MetaCocktailsApp: App {
    
    var criteria = SearchCriteriaViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(criteria)
        }
    }
}
