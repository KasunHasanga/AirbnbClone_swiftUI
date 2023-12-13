//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by kasun Hasanga on 2023-12-13.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guest
}

struct DestinationSearchView: View {
    
    @Binding var show: Bool
    @State private var  destination = ""
    @State private var selectedOptions: DestinationSearchOptions = .location
    
    var body: some View {
        VStack {
            
            Button{
                withAnimation (.snappy){
                    show.toggle()
                }
            }label: {
               Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black
                    )
            }
            
            //where to
            VStack(alignment:.leading){
                if(selectedOptions == .location){
                    Text("Where to?")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destination" ,text: $destination)
                            .font(.subheadline)
                    }   .frame(height: 44)
                        .padding(.horizontal)
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(Color(.systemGray2))
                }
                }else{
                    CollapsedPickerView(title: "Where to", descrption: "Add destination")
                }
         
            }
            .padding()
            .frame(height: selectedOptions == .location ? 120 :64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy) {selectedOptions = .location}
            }
            
            //date selection view
            
            VStack(alignment:.leading){
                if (selectedOptions == .dates){
                    HStack(alignment:.top) {
                        Text("Show Expanded View")
                        
                        Spacer()
                    }
                }else{
                    CollapsedPickerView(title: "When", descrption: "Add dates")
                }
                
            }
            .padding()
                .frame(height: selectedOptions == .dates ? 120 :64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy) {selectedOptions = .dates}
               
            }
           
               
            
            // num guest view
            VStack(alignment:.leading){
                if (selectedOptions == .guest){
                    HStack(alignment:.top) {
                        Text("Show Expanded View")
                        
                        Spacer()
                    }
                }else{
                    CollapsedPickerView(title: "Who", descrption: "Add guest")
                }
                
            }.padding()
                .frame(height: selectedOptions == .guest ? 120 :64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy) {selectedOptions = .guest}
            }
           
            
           
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    let title : String
    let descrption : String
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(descrption)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
            
        }
//        .padding()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 12))
//        .padding()
//        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}
