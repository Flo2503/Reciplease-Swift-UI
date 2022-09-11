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
                    RecipeCell(recipe: currentRecipe)
                }
            }
            .navigationTitle("Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}



 struct RecipeCell: View {
     
     let recipe: Recipe
     
    var body: some View {
        HStack {
            Image(recipe.image)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            VStack {
                Text(recipe.label)
                Text("\(recipe.totalTime) mn")
            }
            .foregroundColor(Color.pink)
            .padding()
        }
    }
}
