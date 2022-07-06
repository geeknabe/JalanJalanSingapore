//
//  PlaceCardDetailView.swift
//  JalanJalanSingapore
//
//  Created by Cheng Mun Mun on 06/07/2022.
//

import SwiftUI

struct PlaceCardDetailView: View {
    let place: Place
    @State private var isShowingPlaceDetailView = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(place.name.uppercased())
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.system(size: 60))
                .multilineTextAlignment(.leading)
                .padding(.bottom, 5)
            
            NavigationLink(
                destination: PlaceDetailView(place: place),
                isActive: $isShowingPlaceDetailView
            ) {
                Button(action: {
                    isShowingPlaceDetailView = true
                }) {
                    HStack {
                        Text("Learn more")
                            .fontWeight(.bold)
                            .font(.body)
                            .foregroundColor(.white)
                        
                        Image(systemName: "arrow.right.circle")
                            .imageScale(.large)
                            .foregroundColor(.white)
                    } //: HSTACK
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(
                        Capsule()
                            .strokeBorder(Color.white, lineWidth: 1.25)
                    )
                } //: BUTTON
            } //: NAVIGATION LINK
        } //: VSTACK
        .padding(.horizontal, 20)
        .padding(.bottom, 70)
    }
}

struct PlaceCardDetailView_Previews: PreviewProvider {
    static let places: [Place] = placesData
    
    static var previews: some View {
        PlaceCardDetailView(place: places[0])
            .previewLayout(.sizeThatFits)
            .background(.black)
    }
}
