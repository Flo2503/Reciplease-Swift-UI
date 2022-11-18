//
//  RecipeDetails.swift
//  Reciplease Swift UI
//
//  Created by Florent on 08/09/2022.
//

import SwiftUI

struct RecipeDetails: View {
    // MARK: - PROPERTIES
    
    let recipe: Recipe

    // MARK: - BODY
    var body: some View {
       VStack(alignment: .center) {
            //: HEADER
            RecipeHeaderView(recipe: recipe)

            VStack(spacing: 20) {
                //: TITLE
                Text(recipe.label)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("ColorPink"))
                
                //: INGREDIENTS LIST
                List(recipe.ingredientLines, id: \.self) { item in
                    Text(item)
                }
                
                //: LINK

            } //: VSTACK
        } //: VSTACK
       .edgesIgnoringSafeArea(.top)
    }
}

// MARK: - PREVIEW
struct DetailRecipe_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(recipe: recipesData[1])
    }
}
