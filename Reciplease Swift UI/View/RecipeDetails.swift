//
//  RecipeDetails.swift
//  Reciplease Swift UI
//
//  Created by Florent on 08/09/2022.
//

import SwiftUI

struct RecipeDetails: View {
    
    let recipe: Recipe
    @State private var zoomed  = false
    
    var body: some View {
        VStack {
            Image(recipe.image)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation() {
                        self.zoomed.toggle()
                    }
                }
            Text(recipe.label)
                .foregroundColor(Color.pink)
                .font(.title3)
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct DetailRecipe_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(recipe: Recipe.allRecipes().first!)
    }
}
