//
//  SearchView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 06/09/2022.
//

import SwiftUI

struct SearchView: View {
    
    let recipe = Recipe.allRecipes()
    
    var body: some View {
        NavigationView {
            List(self.recipe, id: \.id) { currentRecipe in
                NavigationLink(destination: RecipeDetails(recipe: currentRecipe)) {
                    CustomRow(recipe: currentRecipe)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
