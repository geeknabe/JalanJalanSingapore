//
//  ContentView.swift
//  JalanJalanSingapore
//
//  Created by Cheng Mun Mun on 06/07/2022.
//

import SwiftUI

struct ContentView: View {
    let places: [Place] = placesData
    @State private var activeTab: Int = 0
    
    var body: some View {
        NavigationView {
            TabView(selection: $activeTab) {
                ForEach(places) { place in
                    PlaceCardView(place: place).tag(place.id - 1)
                }
            } //: TABVIEW
            .tabViewStyle(PageTabViewStyle())
            .padding(10)
            .navigationBarHidden(true)
            .background(
                Image(placesData[activeTab].image)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 20)
                    .edgesIgnoringSafeArea(.all)
            )
        } //: NAVIGATION VIEW
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
