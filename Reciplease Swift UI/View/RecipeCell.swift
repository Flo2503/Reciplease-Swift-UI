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
            RecipeImage(recipe: recipe, cornerRadius: 17, shadow: 5, widthHeart: 30, heightHeart: 30, heightImage: 200)
            Text(recipe.label)
                .font(.title3)
            RecipeYield(recipe: recipe)
        }
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(recipe: Recipe.allRecipes()[0])
            .previewLayout(.fixed(width: 400, height: 300))
    }
}


struct RecipeImage: View {
    
    let recipe: Recipe
    let cornerRadius: CGFloat
    let shadow: CGFloat
    let widthHeart: CGFloat
    let heightHeart: CGFloat
    let heightImage: CGFloat
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(recipe.image)
                .resizable()
                .cornerRadius(cornerRadius)
                .shadow(radius: shadow)
                .frame(height: heightImage)
            Button(action: {}) {
                Image(systemName: "heart")
                    .font(.title2)
                    .foregroundColor(.customPink)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.customPink, lineWidth: 2))
                    .frame(width: widthHeart, height: heightHeart)
                    .padding()
            }
        }
    }
}

struct RecipeYield: View {
    
    let recipe: Recipe
    
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundColor(.customPink)
            Text("\(recipe.yield)")
        }.font(.headline)
    }
}

struct RecipeTime: View {
    
    let recipe: Recipe
    
    var body: some View {
        HStack {
            Image(systemName: "timer")
                .foregroundColor(.customPink)
            Text("\(recipe.totalTime) mn")
        }.font(.headline)
    }
}
