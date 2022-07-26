import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello world!")
        
//        NavigationView {
//            TabView {
//                ForEach(placesData) {
//                    PlaceCardView(place: $0)
//                }
//            } //: TABVIEW
//            .tabViewStyle(PageTabViewStyle())
//            .padding(10)
//            .navigationBarHidden(true)
//        } //: NAVIGATION VIEW
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
