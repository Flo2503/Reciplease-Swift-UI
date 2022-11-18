//
//  SearchView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 06/09/2022.
//

import SwiftUI

struct ListView: View {
    // MARK: - PROPERTIES
    private let recipe: [Recipe] = recipesData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List(recipe) { item in
                NavigationLink(destination: RecipeDetails(recipe: item)) {
                    RecipeRowView(recipe: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Recipes")
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}


