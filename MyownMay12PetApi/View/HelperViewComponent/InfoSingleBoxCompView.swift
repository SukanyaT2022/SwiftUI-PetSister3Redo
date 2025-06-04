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
        

        HStack(alignment: .center, spacing: 15){
            Text(titleVar)
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.blue)
                .padding(.leading, 5)
                .frame(width: UIScreen.main.bounds.width * 0.3)
            Text(descriptionVar)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green)
        }
        .frame(maxWidth: .infinity)
        .frame(width: UIScreen.main.bounds.width * 0.9)
        .frame(minHeight: 60)
        .background(Color.yellow)
      
        
    }
}

#Preview {
    InfoSingleBoxCompView(titleVar: "title", descriptionVar: "description")
}
