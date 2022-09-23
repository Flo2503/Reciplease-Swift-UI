//
//  SearchView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 06/09/2022.
//

import SwiftUI

struct SearchView: View {
    
    private let recipe = Recipe.allRecipes()
    @State private var ingredients = ""
    @State private var showModal = false
    @State var selectedRecipe: Recipe
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("What's in your fridge ?", text: $ingredients)
                Button(action: {}) {
                    Image(systemName: "plus.circle")
                        .foregroundColor(.customPink)
                        .font(.title)
                }
            }.padding()
            List {
                Section {
                SectionTitle(title: "Your ingredients")
                    HStack {
                        Text("Cheese, Mushroom, Eggs")
                            .font(.body)
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "xmark.circle")
                                .foregroundColor(.customPink)
                                .font(.title)
                        }
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
                    }.sheet(isPresented: self.$showModal) {
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
            .font(.body)
            .foregroundColor(.gray )
    }
}

