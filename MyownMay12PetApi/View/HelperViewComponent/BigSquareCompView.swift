//
//  BigSquareCompView.swift
//  MyownMay12PetApi
//
//  Created by TS2 on 6/3/25.
//

import SwiftUI

struct BigSquareCompView: View {
    var body: some View {
        VStack {
            ZStack {
                // Square box
                Rectangle()
                    .frame(
                        width: UIScreen.main.bounds.width * 0.7,
                        height: UIScreen.main.bounds.width * 0.7
                    )
                    .foregroundColor(.yellow)
                    .cornerRadius(10)
                
                // // Circle
                // Circle()
                //     .frame(
                //         width: UIScreen.main.bounds.width * 0.7,
                //         height: UIScreen.main.bounds.width * 0.7
                //     )
                //     .foregroundColor(.white)
                
                // Image
                Image("dog1")
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: UIScreen.main.bounds.width * 0.6,
                        height: UIScreen.main.bounds.width * 0.6
                    )
                    .clipShape(Circle())
                
                Text("Surfing Dog Kiwi! 2 years")
                    .font(.headline)
                    .offset(x: 0, y: 100)
            }
        }
    }
}

#Preview {
    BigSquareCompView()
}
