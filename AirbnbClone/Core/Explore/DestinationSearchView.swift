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
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuest = 0

    
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
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                      
                    VStack{
                        DatePicker("From", selection: $startDate, displayedComponents:.date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents:.date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                }else{
                    CollapsedPickerView(title: "When", descrption: "Add dates")
                }
                
            }
            .padding()
                .frame(height: selectedOptions == .dates ? 180 :64)
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
                    Text("Where to?")
                        .font(.title)
                        .fontWeight(.semibold)
                    Stepper{
                        Text("\(numGuest) Adults")
                    } onIncrement: {
                        numGuest += 1
                    }onDecrement: {
                        guard numGuest > 0 else {return}
                        numGuest -= 1
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
