//
//  MyownMay12PetApiApp.swift
//  MyownMay12PetApi
//
//  Created by TS2 on 5/25/25.
//

import SwiftUI

@main
struct MyownMay12PetApiApp: App {
    var body: some Scene {
        WindowGroup {
            SquareBoxCompView(petArrayOfPetModel: AppHelper.loadPetBreedsFromJSON() )
        }
    }
}
