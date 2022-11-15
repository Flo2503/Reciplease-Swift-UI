//
//  SearchView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 06/09/2022.
//

import SwiftUI

struct SearchView: View {
    
    private let recipe = Recipe.allRecipes()
    var ingredients: [String] = []
    @State private var ingredient = ""
    @State private var showModal = false
    @State var selectedRecipe: Recipe
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("What's in your fridge ?", text: $ingredient)
                Button(action: {}) {
                    Image(systemName: "plus.circle")
                        .foregroundColor(.customPink)
                        .font(.title)
                }
            }.padding().font(.system(size: 18))
            List {
                Section {
                SectionTitle(title: "Your ingredients")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<ingredients.count, id:\.self) { index in
                                IngredientCell(ingredient: self.ingredients[index])
                            }
                        }.padding(.all, 10)
                    }
                }
                Section {
                    SectionTitle(title: "Recipes")
                    ScrollView(showsIndicators: false) {
                        ForEach(self.recipe, id: \.id) { currentRecipe in
                            RecipeCell(recipe: currentRecipe)
                                .onTapGesture {
                                    self.showModal.toggle()
                                    self.selectedRecipe = currentRecipe
                                }
                        }
                    }
                    .sheet(isPresented: self.$showModal) {
                        RecipeDetails(recipe: selectedRecipe)
                    }
                }
            }.listStyle(GroupedListStyle())
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(selectedRecipe: Recipe.allRecipes()[1])

    }
}
#endif

struct SectionTitle: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 15))
            .foregroundColor(.gray )
    }
}


