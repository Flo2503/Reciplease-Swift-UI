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
            ZStack(alignment: .topTrailing) {
                Image(recipe.image)
                    .resizable()
                    .frame(height: 230)
                    .onTapGesture {
                        withAnimation() {
                            self.zoomed.toggle()
                        }
                }
                Button(action: {}) {
                    Image(systemName: "heart")
                        .font(.title2)
                        .foregroundColor(.customPink)
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.customPink, lineWidth: 2))
                        .frame(width: 40, height: 40)
                        .padding()
                }
                Text(recipe.label)
                    .foregroundColor(Color.pink)
                    .font(.title3)
            }
            List {
                ForEach(0..<recipe.ingredientLines.count) { index in
                    Text(recipe.ingredientLines[index])
                }
            }
            Button(action: {}) {
                Text("Get directions")
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.pink)
                    .cornerRadius(30)
            }.padding()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct DetailRecipe_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(recipe: Recipe.allRecipes().first!)
    }
}
