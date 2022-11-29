//
//  LocationDetailView.swift
//  TravelApp
//
//  Created by Pratyush  on 5/18/21.
//

import SwiftUI

struct LocationDetailView: View {
    @ObservedObject var viewModel: LocationViewModel
    var location: Location
    var ns: Namespace.ID
    
    var body: some View {
        ZStack {
            VStack {
                Image(location.image)
                    .resizable()
                    .matchedGeometryEffect(id: "image-\(location.id)", in: ns)
                    .frame(height: UIScreen.main.bounds.height/2)
                    .cornerRadius(25.0)
                    .overlay(
                        
                        Image(systemName: "xmark")
                            .padding()
                            .frame(width: 32.0, height: 32.0)
                            .foregroundColor(.white)
                            .background(Color.black.opacity(0.6))
                            .clipShape(Circle())
                            .padding()
                            .padding(.top)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    viewModel.showLocation = false
                                }
                            }
                        ,alignment: .topTrailing
                    
                    )
                
                VStack(alignment: .leading, spacing: 10.0) {
                    Text(location.place)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .matchedGeometryEffect(id: "place-\(location.id)", in: ns)
                    
                    HStack {
                        Image(systemName: "mappin.circle.fill")
                            .resizable()
                            .foregroundColor(.primary)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20.0, height: 20.0)
                            .matchedGeometryEffect(id: "pin-\(location.id)", in: ns)
                        
                        
                        Text(location.country)
                            .font(.caption)
                            .foregroundColor(.primary)
                            
                        
                        HStack(spacing: 2.0) {
                            ForEach(0..<location.rating, id: \.self) { i in
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color.yellow)
                                
                            }
                            
                        }
                        .matchedGeometryEffect(id: "star-\(location.id)", in: ns)
                        
                        
                        Text("\(location.rating)")
                            .font(.caption)
                            .foregroundColor(.primary)
                            .fontWeight(.black)
                            .matchedGeometryEffect(id: "rating-\(location.id)", in: ns)
                    }
                    .foregroundColor(.white)
                    
                    Text(location.description)
                       
                        .font(.caption)
                        .matchedGeometryEffect(id: "description-\(location.id)", in: ns)
                }
                .padding()
                .foregroundColor(.primary)
                
                
                
                
                
                
                Spacer()
            }
            
            
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
