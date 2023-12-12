//
//  ListingDetailsView.swift
//  AirbnbClone
//
//  Created by kasun Hasanga on 2023-12-12.
//

import SwiftUI

struct ListingDetailsView: View {
    var body: some View {
        
        ScrollView{
            ListingImageCarouselView()
                .frame(height: 320)
            
            VStack(alignment: .leading,spacing: 8){
                
                Text("Miami Villa")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                
                    HStack(spacing:2){
                        Image(systemName: "star.fill")
                        
                        Text("4.86")
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                        
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                }
                .font(.caption)
                
                
            }
            .padding(.leading)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
            
            Divider()
            
            // host infor view
            
            HStack(){
                
                VStack(alignment:.leading,spacing: 4){
                    Text("Entir villa host by John Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing:2){
                     
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }   .font(.caption)
                }
                .frame(width: 300,alignment: .leading)
             
                Spacer()
                
               Image("man-standing-profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64,height: 64)
                    .clipShape(Circle())
               
            }
            .padding()
            
            Divider()
            
            // Listing Features
            
            VStack (alignment:.leading ,spacing: 16){
                ForEach(0 ..< 2){ features in
                    HStack(spacing:12){
                        Image(systemName: "medal")
                        
                        VStack(alignment:.leading){
                            
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Long long Long long Long long Long long Long long Long long Long long Long long")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            
            
        }
        
        
    }
}

#Preview {
    ListingDetailsView()
}
