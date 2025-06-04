//
//  TopBarCompView.swift
//  MyownMay12PetApi
//
//  Created by TS2 on 6/3/25.
//

import SwiftUI

struct TopBarCompView: View {
    var body: some View {
        HStack {
            // First item - Profile
            ZStack() {
                Circle()
                    .fill(Color.yellow)
                    .stroke(Color.blue, lineWidth: 3)
                    .frame(width: 80, height: 80)
                
                Image("dog1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height:100)
                    .clipShape(Circle())
            }
            .frame(maxWidth: .infinity)// this line make 3 item space equally
            
            // Second item - Location
            HStack {
                Image(systemName: "location.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.red)
                Text("Denvor")
                    .font(.headline)
            }
            .frame(maxWidth: .infinity)// this line make 3 item space equally
            
            // Third item - Bell
            Image(systemName: "bell")
                .resizable()
                .frame(width: 30, height: 30)
                .frame(maxWidth: .infinity)// this line make 3 item space equally
        }
        .padding()
    
    }
}

#Preview {
    TopBarCompView()
}
