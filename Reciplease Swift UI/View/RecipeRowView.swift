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
            Image(recipe.image)
                .resizable()
                .frame(width: 80, height: 80)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(recipe.label)
                    .font(.title2)
                    .fontWeight(.bold)
                HStack {
                    ForEach(0..<recipe.ingredientLines.count, id: \.self) { item in
                        Text("\(recipe.ingredientLines[item]), ")
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
