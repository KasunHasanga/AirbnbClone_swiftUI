//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by kasun Hasanga on 2023-12-11.
//

import SwiftUI

struct ListingItemView: View {
    

    
    
    var body: some View {
       
        VStack(spacing:8){
            
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            //Listing Details
            
            HStack(alignment:.top){
                //detais
                VStack(alignment:.leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    
                    HStack(spacing:4){
                        Text("$567")
                        Text("Night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                //rating
                
                HStack(spacing:2){
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
                .foregroundStyle(.black)
            }
            
        }.padding()
        
        
        
        
        
    }
}

#Preview {
    ListingItemView()
}
