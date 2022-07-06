//
//  PlaceCardView.swift
//  JalanJalanSingapore
//
//  Created by Cheng Mun Mun on 06/07/2022.
//

import SwiftUI

struct PlaceCardView: View {
    let place: Place
    
    var body: some View {
        ZStack {
            Image(place.image)
                .resizable()
                .scaledToFill()
        } // :ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .cornerRadius(10)
        .overlay(
            PlaceCardDetailView(place: place),
            alignment: .bottomLeading
        )
    }
}

struct PlaceCardView_Previews: PreviewProvider {
    static let places: [Place] = placesData
    
    static var previews: some View {
        PlaceCardView(place: places[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
