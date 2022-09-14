//
//  RecipeCell.swift
//  Reciplease Swift UI
//
//  Created by Florent on 14/09/2022.
//

import SwiftUI

struct RecipeCell: View {
    let recipe: Recipe
     
    var body: some View {
        HStack() {
            Image(recipe.image)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
                .shadow(color: Color.pink.opacity(0.5), radius: 5, x: -1.9)
                .padding()
            VStack {
                Text(recipe.label)
                    .background(
                     Color.pink
                         .cornerRadius(5)
                    )
                    .foregroundColor(.white)
                Text("\(recipe.totalTime) mn")
                Text("\(recipe.yield) \(Image(systemName: "hand.thumbsup"))")
            }
            .font(.title3)
            .foregroundColor(.pink)
            .padding()
            Spacer()
            Image(systemName: "heart")
                .font(.largeTitle)
                .padding()
        }
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(recipe: Recipe.allRecipes().first!)
    }
}
