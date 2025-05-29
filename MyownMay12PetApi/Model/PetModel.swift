//
//  PetModel.swift
//  MyownMay12PetApi
//
//  Created by TS2 on 5/29/25.
//
import Foundation
//codable and decoable
struct PetsContainer :Codable{
    let allPets: [PetModel]
}

struct PetModel : Identifiable, Codable {
    let id = UUID()
    let petName: String
    let type: String
    let address: Address
    let dob: Int
    let age: Int
    let activities: [String]
    let image:String
    let distance: String?
    let breed: String
    //enum if not the same as json file
    enum CodingKeys: String, CodingKey {
        case petName = "pet_name"
        case type
        case address
        case dob = "year_of_birth"
        case age
        case activities
        case image
        case distance
        case breed
    }
}

struct Address: Codable {
    let street: String
    let city: String
    let state: String
}
