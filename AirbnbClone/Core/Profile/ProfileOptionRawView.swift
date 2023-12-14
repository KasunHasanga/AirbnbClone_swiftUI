//
//  ProfileOptionRawView.swift
//  AirbnbClone
//
//  Created by kasun Hasanga on 2023-12-14.
//

import SwiftUI

struct ProfileOptionRawView: View {
    let imageName : String
    let title : String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                Image(systemName: "chevron.right")
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileOptionRawView(imageName: "gear", title: "Setting")
}
