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
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                Image(recipe.image)
                    .resizable()
                .aspectRatio(contentMode: .fit)
                Image(systemName: "heart")
                    .font(.title)
                    .foregroundColor(.customPink)
                    .background(
                        LinearGradient(
                            colors: [.white, .white],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.customPink, lineWidth: 1.5))
                    )
                    .padding()
                    
            }
            Text(recipe.label)
                .font(.title2)
            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.customPink)
                Text("\(recipe.yield)")
            }.font(.title3)
        }
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(recipe: Recipe.allRecipes().first!)
            .previewLayout(.fixed(width: 400, height: 250))
    }
}
