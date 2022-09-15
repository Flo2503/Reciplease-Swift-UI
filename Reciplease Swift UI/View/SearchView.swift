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
        VStack {
            TextField("What's in your fridge ?", text: $ingredients)
            ScrollView(showsIndicators: false) {
                Text("Ingredients")
                ForEach(self.recipe, id: \.id) { currentRecipe in
                    RecipeCell(recipe: currentRecipe)
                }.padding(.trailing).padding(.leading)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
