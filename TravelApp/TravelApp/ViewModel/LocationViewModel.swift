//
//  LocationViewModel.swift
//  TravelApp
//
//  Created by Pratyush  on 5/18/21.
//

import Foundation


class LocationViewModel: ObservableObject {
    
    @Published var locations: [Location] = [
    
        Location(id: 1, place: "Yosemite", country: "USA", image: "yosemite", description: "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome. In Yosemite Village are shops, restaurants, lodging, ", rating: 5, cost: "$200", days: "5"),
        
        Location(id: 2, place: "Antelope Canyon", country: "Arizona", image: "antelope", description: "Antelope Canyon is a slot canyon in the American Southwest, on Navajo land east of Page, Arizona. It includes two separate, scenic slot canyon sections, referred to as Upper Antelope Canyon, and Lower Antelope Canyon.", rating: 4, cost: "$350", days: "3"),
        
        Location(id: 3, place: "Azores", country: "Portugal", image: "azores", description: "The Azores, an autonomous region of Portugal, are an archipelago in the mid-Atlantic. The islands are characterized by dramatic landscapes, fishing villages, green pastures and hedgerows of blue hydrangeas. São Miguel, the largest, has lake-filled calderas and the Gorreana", rating: 4, cost: "$600", days: "10"),
        
        Location(id: 4, place: "Venice", country: "Italy", image: "venice", description: "Venice, the capital of northern Italy’s Veneto region, is built on more than 100 small islands in a lagoon in the Adriatic Sea. It has no roads, just canals – including the Grand Canal thoroughfare – lined with Renaissance and Gothic palaces.", rating: 5, cost: "$340", days: "2"),
        
        Location(id: 5, place: "Angel Falls", country: "Venezuela", image: "angelfalls", description: "Angel Falls is a waterfall in Venezuela. It is the world's highest uninterrupted waterfall, with a height of 979 metres and a plunge of 807 m. The waterfall drops over the edge of the Auyán-tepui mountain in the Canaima National Park", rating: 5, cost: "$120", days: "1")
    ]
    
    @Published var showLocation: Bool = false
    @Published var selectedLocation: Location = Location(id: 0, place: "",country: "", image: "", description: "", rating: 1, cost: "", days: "")
    
}
