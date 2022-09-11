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
        List(self.recipe, id: \.id) { currentRecipe in
            HStack {
                Image(currentRecipe.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(16)
                Text(currentRecipe.label)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}


