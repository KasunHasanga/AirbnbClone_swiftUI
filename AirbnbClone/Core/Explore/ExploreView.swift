//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by kasun Hasanga on 2023-12-11.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{

                SearchAndFilterView()
                
                LazyVStack(spacing:32){
                    ForEach(0 ... 10,id:\.self){
                        listing in
                        NavigationLink(value:listing) {
                            ListingItemView()
                                .frame(height: 420)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
            } .navigationDestination(for: Int.self){
                listing in Text("Listing Details View")
           
            }
        }
        
    }
}

#Preview {
    ExploreView()
}
