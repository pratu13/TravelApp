//
//  LocationView.swift
//  TravelApp
//
//  Created by Pratyush  on 5/18/21.
//

import SwiftUI

struct LocationView: View {
    var location: Location
    var ns: Namespace.ID
    
    var body: some View {
        ZStack {
            VStack {
                Image(location.image)
                    .resizable()
                    .cornerRadius(25.0)
                    .matchedGeometryEffect(id: "image-\(location.id)", in: ns)
            }
            .overlay(
            
                VStack(alignment: .leading, spacing: 10.0) {
                    Text(location.place)
                        .font(.title2)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .matchedGeometryEffect(id: "place-\(location.id)", in: ns)
                    
                    HStack {
                        Image(systemName: "mappin.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20.0, height: 20.0)
                            .matchedGeometryEffect(id: "pin-\(location.id)", in: ns)
                        
                        
                        Text(location.country)
                            .font(.caption)
                            
                        
                        HStack(spacing: 2.0) {
                            ForEach(0..<location.rating, id: \.self) { i in
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color.yellow)
                                
                            }
                            
                        }
                        .matchedGeometryEffect(id: "star-\(location.id)", in: ns)
                        
                        Text("\(location.rating)")
                            .font(.caption)
                            .fontWeight(.black)
                            .matchedGeometryEffect(id: "rating-\(location.id)", in: ns)
                    }
                    .foregroundColor(.white)
                    
                    Text(location.description)
                        .foregroundColor(.white)
                        .font(.caption)
                        .lineLimit(4)
                        .matchedGeometryEffect(id: "description-\(location.id)", in: ns)
                }
                
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                .padding(.horizontal, 12)
                
                ,alignment: .bottomLeading
            
            )
        
        }
//        .frame(width: UIScreen.main.bounds.width - 60)
        .padding()
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
