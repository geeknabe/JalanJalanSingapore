import SwiftUI

struct PlaceCardView: View {
    let place: Place
    
    var body: some View {
        Text("Hello world!")
        
//        ZStack {
//            Image(place.image)
//                .resizable()
//                .scaledToFill()
//        } // :ZSTACK
//        .frame(
//            minWidth: 0,
//            maxWidth: .infinity,
//            minHeight: 0,
//            maxHeight: .infinity,
//            alignment: .center
//        )
//        .cornerRadius(20)
//        .overlay(
//            PlaceCardDetailView(place: place),
//            alignment: .bottomLeading
//        )
    }
}

struct PlaceCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCardView(place: placesData[0])
            .previewLayout(.sizeThatFits)
    }
}
