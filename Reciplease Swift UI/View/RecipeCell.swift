//
//  RecipeCell.swift
//  Reciplease Swift UI
//
//  Created by Florent on 14/09/2022.
//

import SwiftUI

struct RecipeRowView: View {
    // MARK: - PROPERTIES
    
    let recipe: Recipe
     
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            Text(recipe.label)
                .font(.title3)
        }
    }
}

// MARK: - PREVIEW
struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRowView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
