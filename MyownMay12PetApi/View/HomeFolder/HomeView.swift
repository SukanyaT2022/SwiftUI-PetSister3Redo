//
//  HomeView.swift
//  MyownMay12PetApi
//
//  Created by TS2 on 5/25/25.
//

import SwiftUI

struct HomeView: View {
    //below line fecth data from json to pets variable and use on square component in line 30
    let pets = AppHelper.loadPetBreedsFromJSON()
    
//    filter function
    @State var searchText: String = ""
    func filterFunc() -> [PetModel] {
        guard !searchText.isEmpty else {
            return pets
        }
        return pets.filter {
            $0.type.lowercased().contains(searchText.lowercased()) || $0.breed.lowercased().contains(searchText.lowercased())
        }
    }
    
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing:5 ){
                Text("Let's find!")
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.bottom,10)
                Text("Littel friends!")
                    .font(.system(size: 20, weight: .semibold))
            }//close main vstack
            .frame(maxWidth: .infinity, alignment: .leading)

            SearchBoxCompView(text: $searchText)
                .padding(.vertical,10)
            
            
        }//close v stack main box
        .padding(10)
        .padding(.top, 20)
        SquareBoxCompView(petArrayOfPetModel: filterFunc())
        //if petArrayOfPetModel: filterFunc() it give only filter data--if use pets it give all data all pets
        Spacer()
    }
}

#Preview {
    HomeView()
}
