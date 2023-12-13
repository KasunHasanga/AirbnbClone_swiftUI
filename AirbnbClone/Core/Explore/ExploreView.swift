//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by kasun Hasanga on 2023-12-11.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    var body: some View {
        NavigationStack{
            
            if(showDestinationSearchView){
                DestinationSearchView(show: $showDestinationSearchView)
            }else{
                ScrollView{
                    
                    SearchAndFilterView()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    
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
                } .navigationDestination(for: Int.self){ listing in
                    ListingDetailsView()
                        .navigationBarBackButtonHidden()
               
                }
                    }
            
           
        }
        
    }
}

#Preview {
    ExploreView()
}
