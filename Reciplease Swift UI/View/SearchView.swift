//
//  SearchView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 06/09/2022.
//

import SwiftUI

struct SearchView: View {
    
    @State var ingredient = ""
    @State var listOfIngredient = ""
    
    var body: some View {
        NavigationView {
            VStack() {
                HStack {
                    TextField("What's in your fridge ?", text: $ingredient).padding()
                    Button(action: {}) {
                        Text(.init(systemName: "plus.circle.fill")).foregroundColor(.pink).padding().font(.largeTitle)
                    }
                }
                List {
                    Section {
                        Text("List of ingredients")
                    }
                    Section {
                        ForEach(recipes) { currentRecipe in
                            NavigationLink(destination: DetailRecipe(recipe: currentRecipe)) {
                                 RecipeRow(recipe: currentRecipe).frame(height: 70)
                            }
                        }
                    }
                }
            }.navigationTitle(Text("Reciplease")).navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
