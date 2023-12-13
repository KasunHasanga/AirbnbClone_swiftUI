//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by kasun Hasanga on 2023-12-12.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    
    ]
    var body: some View {
        //images
        TabView{
            ForEach(images,id:\.self){
                image in Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
           
            .tabViewStyle(.page)
        
    }
}

#Preview {
    ListingImageCarouselView()
}