//
//  HomeView.swift
//  MyownMay12PetApi
//
//  Created by TS2 on 5/25/25.
//

import SwiftUI

struct HomeView: View {
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

            SearchBoxCompView()
                .padding(.vertical,10)
        }//close v stack main box
        .padding(10)
        .padding(.top, 20)
        Spacer()
    }
}

#Preview {
    HomeView()
}
