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
            }
            Text(recipe.label)
                .foregroundColor(.pink)
                .font(.title3)
            List {
                Section {
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.customPink)
                        Text("\(recipe.yield)")
                    }.font(.headline)
                    HStack {
                        Image(systemName: "timer")
                            .foregroundColor(.customPink)
                        Text("\(recipe.totalTime) mn")
                    }.font(.headline)
                }
                SectionTitle(title: "Ingredients")
                ForEach(0..<recipe.ingredientLines.count) { index in
                    Text(recipe.ingredientLines[index])
                }
                Section() {
                    Button(action: {}) {
                        HStack {
                            Spacer()
                            Text("Get directions")
                                .foregroundColor(.pink)
                            Spacer()
                        }
                    }
                }
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct DetailRecipe_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(recipe: Recipe.allRecipes().first!)
    }
}
