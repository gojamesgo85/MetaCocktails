//
//  FlovorProfileSearchView.swift
//  MetaCocktails
//
//  Created by James on 8/9/23.
//

import SwiftUI

struct FlavorProfileSearchView: View {
    

    @State private var isShowingIngredientsList = false
    @State private var isShowingFlavorProfiles = false
    @State private var isShowingIngredientDislikesList = false
    @State private var isShowingProfileDislikesList = false
    @State private var isShowingCocktailStyle = false
    @State private var preferredIngredients: [cocktailIngredients] = []
    
    private var roundButtonFrameSize = CGFloat(20)
    
    var body: some View {
       
        
        VStack{
            List {
                Text("Example liked ingredient")
                    .font(.headline)
                    .foregroundColor(.green)
                Text("- Example disliked ingredient")
                    .font(.headline)
                    .foregroundColor(.red)
                Text("- Example disliked ingredient")
                    .font(.headline)
                    .foregroundColor(.red)
                Text("- Example disliked ingredient")
                    .font(.headline)
                    .foregroundColor(.red)
                
                Button("Clear Search") {
                    preferredIngredients = []
                    print("Button was tapped")
                        
                }
                
                
               
            }

            .listStyle(.plain)
            Spacer()
            HStack {
                Button(action: {isShowingIngredientsList = true} ) {
                    
                    VStack{
                        
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: roundButtonFrameSize, height: roundButtonFrameSize)
                        Text("Ingredient")
                            .fontWeight(.bold)
                    }
                    .modifier(RoundButtonStyle())
                    .foregroundColor(Color(UIColor.systemGreen))
                    
                }
                .offset(CGSize(width: -30, height: 110))
                .sheet(isPresented: $isShowingIngredientsList) {
                    IngredientLikesChecklist(allIngredients: MockData.allOfTheCocktailIngredients)
                }
                Button(action: {isShowingIngredientDislikesList = true} ) {
                    VStack{
                        Image(systemName: "x.circle.fill")
                            .resizable()
                            .frame(width: roundButtonFrameSize, height: roundButtonFrameSize)
                        Text("Ingredient")
                            .fontWeight(.bold)
                    }
                    .modifier(RoundButtonStyle())
                    .foregroundColor(Color(UIColor.systemRed))
                    
                }
                .offset(CGSize(width: 30, height: 110))
                .sheet(isPresented: $isShowingIngredientDislikesList) {
                    IngredientDislikesChecklist(allIngredients: MockData.allOfTheCocktailIngredients)
                }
                
                
            }
            
            Button(action: {isShowingCocktailStyle = true}) {
                VStack{
//                    Image(systemName: "checkmark.circle.fill")
//                        .resizable()
//                        .frame(width: roundButtonFrameSize, height: roundButtonFrameSize)
                    Text("Style")
                        .fontWeight(.bold)
                        .font(.title)
                        
                }
                .modifier(RoundButtonStyle())
                .foregroundColor(Color(UIColor.systemBrown))
                
            }
            .offset(x: 0, y: 90)
            HStack {
                
                Button(action: {isShowingFlavorProfiles = true} ) {
                    VStack{
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: roundButtonFrameSize, height: roundButtonFrameSize)
                        Text("Profile")
                            .fontWeight(.bold)
                    }
                    .modifier(RoundButtonStyle())
                    .foregroundColor(Color(UIColor.systemGreen))
                    
                }
                .offset(CGSize(width: -50, height: 50))
                .sheet(isPresented: $isShowingFlavorProfiles) {
                    ProfileLikesChecklist(flavorProfiles: MockData.flavorProfiles)
                }
                

                Button(action: {isShowingProfileDislikesList = true} ) {
                    VStack{
                        Image(systemName: "x.circle.fill")
                            
                            .resizable()
                            .frame(width: roundButtonFrameSize, height: roundButtonFrameSize)
                        Text("profile")
                            .fontWeight(.bold)
                            
                    }
                    .modifier(RoundButtonStyle())
                    .foregroundColor(Color(UIColor.systemRed))
                    
                }
                .offset(CGSize(width: 50, height: 50))
                .sheet(isPresented: $isShowingProfileDislikesList) {
                    ProfileDislikesChecklist(flavorProfiles: MockData.flavorProfiles)
                }
                
            }
          
      
            Button(action: {}) {
                VStack {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: roundButtonFrameSize, height: roundButtonFrameSize)
                    Text("Search")
                        .fontWeight(.bold)
                }
  
            }
            .modifier(RoundButtonStyle())
            .padding()
            
            }
        
    }
}

struct FlavorProfileSearchView_Previews: PreviewProvider {
    static var previews: some View {
        FlavorProfileSearchView()
    }
}
