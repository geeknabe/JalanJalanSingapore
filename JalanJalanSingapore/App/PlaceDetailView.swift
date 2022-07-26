// DO NOT EDIT

import SwiftUI

struct PlaceDetailView: View {
    let place: Place
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(place.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 350)
                
                Text(place.description)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                
                PlaceLinkView(link: place.link)
            } //: VSTACK
            .navigationTitle(place.name)
            .padding([.leading,.horizontal], 10)
            .padding(.bottom, 20)
            .frame(minWidth: 350, maxWidth: 500, alignment: .center)
        } //: SCROLL
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static let places: [Place] = placesData
    
    static var previews: some View {
        PlaceDetailView(place: places[0])
    }
}
