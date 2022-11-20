//
//  DirectionsLinkView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 20/11/2022.
//

import SwiftUI

struct DirectionsLinkView: View {
    // MARK: - PROPERTIES
    var recipeLabel: String
    var recipeUrl: String
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Get Directions")
                Spacer()
                Link(recipeLabel, destination: URL(string: recipeUrl)!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

// MARK: - PREVIEW
struct DirectionsLinkView_Previews: PreviewProvider {
    static var previews: some View {
        DirectionsLinkView(recipeLabel: "Burger", recipeUrl: "https...")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
