//
//  ProfileDislikesChecklist.swift
//  MetaCocktails
//
//  Created by James on 8/10/23.
//

import SwiftUI

struct ProfileDislikesChecklist: View {
    
    var flavorProfiles: FlavorProfiles
    
    var body: some View {
        NavigationView {
            VStack{
                SearchBarView()
                    .navigationTitle("Profile Dislikes")
                List {
                    ForEach(flavorProfiles.profiles) { profile in
                        
                        PreferencesCheckListCell(toggleTitle: profile.name)
                            .tint(.red)
                    }
                }
                .listStyle(.plain)
                Spacer()
            }
        }
    }
}

struct ProfileDislikesChecklist_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDislikesChecklist(flavorProfiles: MockData.flavorProfiles)
    }
}
