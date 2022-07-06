//
//  PlaceLinkView.swift
//  JalanJalanSingapore
//
//  Created by Cheng Mun Mun on 06/07/2022.
//

import SwiftUI

struct PlaceLinkView: View {
    let link: String
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Source")
                
                Spacer()
                
                Link("Visit official site", destination: URL(string: link)!)
                
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        } //: GROUPBOX
    }
}

struct PlaceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceLinkView(link: "https://google.com")
            .previewLayout(.sizeThatFits)
    }
}
