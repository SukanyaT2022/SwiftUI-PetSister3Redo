//
//  SquareBoxCompView.swift
//  MyownMay12PetApi
//
//  Created by TS2 on 5/27/25.
//

import SwiftUI
struct AppHelper {
    
    static func loadPetBreedsFromJSON() -> [PetModel] {
        
        //step 2- this part search for file data.json- find or not - else if not find [] means just get out
        
        guard let url = Bundle.main.url(forResource: "PetData2", withExtension: "json") else {
            
            print("❌ pets.json not found in bundle")
            
            return []
            
        }
        
        print(url)
        
        do {
            
            //step 3 we extract data inside file url
            
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            //decode convert json to swift obj
            
            let petsContainer = try decoder.decode(PetsContainer.self, from: data)
            
            //            petsContainer.pets  - come fron petmodel name of struct
            
            //key name have to becareful need to match key (petss) on jason- and in pet modal and in function
            
            return petsContainer.allPets
            
        } catch {
            
            print("❌ Failed to load or decode pets.json: \(error)")
            
            return []
            
        }
        
    }
    
}
struct Pet: Identifiable{
    
    let name:String
    
    let imageName:String
    
    let id = UUID()
    
}

 
    
struct SquareBoxCompView: View {
    var petArrayOfPetModel : [PetModel]
    let columnsVar = [
        GridItem(.flexible()),
        GridItem(.flexible()),
//        GridItem(.flexible(minimum: 100, maximum: 200)),
    ]
    
    let petArray: [Pet] = [
        Pet (name:"Fluffy", imageName:"")
    ]
    let widthBox = (UIScreen.main.bounds.width - 32 - 20) / 2
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columnsVar, spacing: 20) {
                
                ForEach(petArrayOfPetModel){
                    pet in
                    ZStack(){
                        Rectangle()
                            .frame(width: widthBox, height: 150)
                            .foregroundColor(Color(hex: "f1c40f"))
                        
                            .cornerRadius(25)
                        
                        
                        Image(pet.image, bundle: nil)
                        
                            .resizable()
                        
                            
//                            .scaledToFit()
                            .scaledToFill()
                            .frame(width:80, height: 120)
                         
                        
                            .offset(x: 60, y: 10)
                    }
                   
                }
            }
        }
    }
}

#Preview {
    SquareBoxCompView(petArrayOfPetModel: AppHelper.loadPetBreedsFromJSON())
}
