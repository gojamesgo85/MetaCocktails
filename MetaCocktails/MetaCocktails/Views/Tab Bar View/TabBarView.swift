//
//  TabBarView.swift
//  MetaCocktails
//
//  Created by James on 8/9/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            FlavorProfileSearchView()
                .tabItem { Label("Search", systemImage: "magnifyingglass.circle.fill") }
           CocktailListView()
                .tabItem { Label("A-Z", systemImage: "list.bullet") }
            PrepBibleListView()
                .tabItem { Label("Prep", systemImage: "book.fill") }
            
        }
        
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .environmentObject(SearchCriteriaViewModel())
    }
}
