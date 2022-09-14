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
                .shadow(color: Color.customPink.opacity(1), radius: 5, x: -1.9)
                .padding()
            VStack {
                Text(recipe.label)
                    .font(.title2)
                    .foregroundColor(.pink)
                Spacer()
                HStack {
                    Text("\(Image(systemName: "timer"))")
                        .foregroundColor(Color.customPink)
                    Text("\(recipe.totalTime)")
                }
                Spacer()
                HStack {
                    Text("\(Image(systemName: "star.fill"))")
                        .foregroundColor(Color.customPink)
                    Text("\(recipe.yield)")
                }
            }.padding().font(.title3)
            Spacer()
            Text(Image(systemName: "heart"))
                .font(.title)
                .foregroundColor(.gray)
        }
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(recipe: Recipe.allRecipes().first!)
            .previewLayout(.fixed(width: 500, height: 150))
    }
}
