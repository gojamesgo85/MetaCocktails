//
//  ProfileLikesChecklist.swift
//  MetaCocktails
//
//  Created by James on 8/10/23.
//

import SwiftUI

struct ProfileLikesChecklist: View {
    
    var flavorProfiles: FlavorProfiles
    
    var body: some View {
        NavigationView {
            VStack{
                SearchBarView()
                    .navigationTitle("Profile Preferences")
                List {
                    ForEach(flavorProfiles.profiles) { profile in
                        
                        PreferencesCheckListCell(toggleTitle: profile.name)
                            
                    }
                }
                .listStyle(.plain)
                Spacer() 
            }
        }
    }
}

struct ProfileLikesChecklist_Previews: PreviewProvider {
    static var previews: some View {
        ProfileLikesChecklist(flavorProfiles: MockData.flavorProfiles)
    }
}
