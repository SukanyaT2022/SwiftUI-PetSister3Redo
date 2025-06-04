//
//  DetailScreenView.swift
//  MyownMay12PetApi
//
//  Created by TS2 on 6/2/25.
//

import SwiftUI

struct DetailScreenView: View {
    
    struct Pet: Identifiable{
        let name:String
        let description:String
        let id = UUID()
    }
    
    
    let petArray: [Pet] = [
        Pet(name: "cat", description: "dog3bg"),
        Pet(name: "dog", description: "img2"),
        Pet(name: "bird", description: "img1"),
        Pet(name: "fish",description: "img2"),
        Pet(name: "lizard", description: "img1"),
        ]
    var body: some View {
        VStack {
            TopBarCompView()
            BigSquareCompView()
            ForEach(petArray) { pet in
                InfoSingleBoxCompView(titleVar: pet.name, descriptionVar: pet.description)
            }
        }
        Spacer()
    }
}

#Preview {
    DetailScreenView()
}
