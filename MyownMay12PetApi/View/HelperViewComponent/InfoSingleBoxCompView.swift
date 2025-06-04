//
//  InfoSingleBoxCompView.swift
//  MyownMay12PetApi
//
//  Created by TS2 on 6/3/25.
//

import SwiftUI

struct InfoSingleBoxCompView: View {
    var titleVar: String
    var descriptionVar: String
    var body: some View {
        HStack(spacing: 30){
            Text(titleVar)
                .font(.headline)
                
            Text(descriptionVar)
        }
        .background(Color.yellow)
        .padding(.vertical, 50)
        
    }
}

#Preview {
    InfoSingleBoxCompView(titleVar: "title", descriptionVar: "description")
}
