//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by kasun Hasanga on 2023-12-14.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //profile login view
            VStack(alignment:.leading ,spacing: 32){
                VStack (alignment:.leading ,spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                    Text("Log in to start planing your next trip")
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
                
                HStack{
                    Text("Don't have an account")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
        }
    }
}

#Preview {
    ProfileView()
}
