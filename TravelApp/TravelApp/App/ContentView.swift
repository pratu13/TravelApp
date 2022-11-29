//
//  ContentView.swift
//  TravelApp
//
//  Created by Pratyush  on 5/18/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = LocationViewModel()
    @Namespace var namespace
    @State var selected: Int = 0
    
    var body: some View {
        ZStack {
            if !self.viewModel.showLocation {
                VStack {
                    HStack {
                        Text("Travel")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Spacer()
                        
                        Text("\(viewModel.locations[selected].id)/\(viewModel.locations.count)")
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal)
                    
                    TabView(selection: $selected) {
                        ForEach(viewModel.locations.indices, id: \.self) { index in
                            LocationView(location: viewModel.locations[index], ns: namespace)
                                .id(index)
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        self.viewModel.showLocation = true
                                        self.viewModel.selectedLocation = viewModel.locations[index]
                                    }
                                }
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                }
            } else {
                LocationDetailView(viewModel: viewModel, location: viewModel.selectedLocation, ns: namespace)
            }
            
        }
        .statusBar(hidden: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
