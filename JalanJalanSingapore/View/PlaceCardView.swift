import SwiftUI

struct PlaceCardView: View {
    let place: Place
    
    var body: some View {
        // Add code here
    }
}

struct PlaceCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCardView(place: placesData[0])
            .previewLayout(.sizeThatFits)
    }
}
