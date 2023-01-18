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
        HStack {
            //: IMAGE
            Image(recipe.image)
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 5) {
                //: TITLE
                Text(recipe.label)
                    .font(.title2)
                    .fontWeight(.bold)
                //: RATE
                RateOrTimeView(image: "star.fill", number: recipe.yield)
                //: INGREDIENTS LIST
                HStack {
                    ForEach(0..<recipe.ingredientLines.count, id: \.self) { item in
                        Text("\(recipe.ingredientLines[item]) ")
                            .font(.caption)
                            .foregroundColor(Color.secondary)
                    }
                } //: HSTACK
            } //: VSTACK
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRowView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
