//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by kasun Hasanga on 2023-12-11.
//

import SwiftUI

struct ListingItemView: View {
    
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    
    ]
    
    
    var body: some View {
       
        VStack(spacing:8){
            
            //images
            TabView{
                ForEach(images,id:\.self){
                    image in Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tabViewStyle(.page)
            
            //Listing Details
            
            HStack(alignment:.top){
                //detais
                VStack(alignment:.leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    
                    HStack(spacing:4){
                        Text("$567")
                        Text("Night")
                    }
                }
                
                Spacer()
                
                //rating
                
                HStack(spacing:2){
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }           
            }
            
        }.padding()
        
        
        
        
        
    }
}

#Preview {
    ListingItemView()
}
