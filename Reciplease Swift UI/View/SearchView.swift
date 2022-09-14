//
//  SearchView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 06/09/2022.
//

import SwiftUI

struct SearchView: View {
    
    let recipe = Recipe.allRecipes()
    @State private var ingredients = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Whats's in your frige ?", text: $ingredients)
                        .font(.title3)
                        .padding()
                    Button(action: {}) {
                        Image(systemName: "plus.circle")
                            .font(.title3)
                            .foregroundColor(.pink)
                            .padding()
                    }
                }
                Text("Ingredients list")
                List(self.recipe, id: \.id) { currentRecipe in
                    NavigationLink(destination: RecipeDetails(recipe: currentRecipe)) {
                        RecipeCell(recipe: currentRecipe)
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Recipes")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
