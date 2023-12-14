//
//  WhishlistView.swift
//  AirbnbClone
//
//  Created by kasun Hasanga on 2023-12-14.
//

import SwiftUI

struct WhishlistView: View {
    var body: some View {
        NavigationStack {
            VStack (alignment:.leading, spacing: 32){
                
                VStack(alignment:.leading,spacing: 4) {
                    Text("Log in to view your wishlist")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlist once you've logged in")
                        .font(.footnote)
                }
                Button{
                    print("Log in")
                } label: {
                    Text("Log In")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Whishlist")
        }
    
    }
}

#Preview {
    WhishlistView()
}
