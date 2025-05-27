//
//  SearchBoxCompView.swift
//  MyownMay12PetApi
//
//  Created by TS2 on 5/25/25.
//

import SwiftUI

struct SearchBoxCompView: View {
    @State var text: String = ""
//    hide and showsearchbar step 1
    @State var showSearchBar: Bool = false
    var body: some View {
        HStack{
            TextField("Search...", text:$text)
                .multilineTextAlignment(.center)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(height: 40)
                )
            //    hide and showsearchbar step 2
                .opacity(showSearchBar ? 1 : 0)
       
           
            Image(systemName: "magnifyingglass")
        
                .onTapGesture {
                    //    hide and showsearchbar step 3 option 1
//                    showSearchBar = !showSearchBar
                    
                    //    hide and showsearchbar step 3 option 2 use toggle()
                    showSearchBar.toggle()
                }
        }
       
    }
}

#Preview {
    SearchBoxCompView()
}
