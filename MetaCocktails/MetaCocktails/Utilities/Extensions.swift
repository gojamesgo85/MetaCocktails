//
//  Extensions.swift
//  MetaCocktails
//
//  Created by James on 8/15/23.
//

import SwiftUI

extension Color {
    
    static let brandPrimaryBlue = Color("BrandPrimaryBlue")
    static let brandPrimaryRed = Color("BrandPrimaryRed")
    static let brandPrimaryPurple = Color("BrandPrimaryPurple")
    static let brandPrimaryYellow = Color("BrandPrimaryYellow")
    static let brandPrimaryOrange = Color("BrandPrimaryOrange")
    
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
