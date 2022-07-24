import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                PlaceCardView(place: placesData[0])
            } //: TABVIEW
        } //: NAVIGATION VIEW
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
