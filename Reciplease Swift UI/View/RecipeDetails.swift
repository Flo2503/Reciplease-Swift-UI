//
//  RecipeDetails.swift
//  Reciplease Swift UI
//
//  Created by Florent on 08/09/2022.
//

import SwiftUI

struct RecipeDetails: View {
    
    let recipe: Recipe

    var body: some View {
        VStack {
            RecipeImage(recipe: recipe, cornerRadius: 0, shadow: 0,widthHeart: 40, heightHeart: 40, heightImage: 270)
            Text(recipe.label)
                .foregroundColor(.pink)
                .font(.title3)
            List {
                Section {
                    RecipeYield(recipe: recipe)
                    RecipeTime(recipe: recipe)
                }
                SectionTitle(title: "Ingredients")
                ForEach(0..<recipe.ingredientLines.count, id:\.self) { index in
                    Text(recipe.ingredientLines[index])
                        .font(.system(size: 18))
                }
                Section() {
                    Button(action: {}) {
                        HStack {
                            Spacer()
                            Text("Get directions")
                                .foregroundColor(.pink)
                            Spacer()
                        }.font(.system(size: 20))
                    }
                }
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct DetailRecipe_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(recipe: Recipe.allRecipes().first!)
    }
}
