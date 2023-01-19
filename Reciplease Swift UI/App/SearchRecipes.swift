//
//  SearchRecipes.swift
//  Reciplease Swift UI
//
//  Created by Florent on 20/11/2022.
//

import SwiftUI

struct SearchRecipes: View {
    // MARK: - PROPERTIES
    
    @State var ingredients: [String] = []
    
    // MARK: - BODY
    var body: some View {
        VStack() {
            Text("Reciplease")
                .fontWeight(.heavy)
                .font(.title)
                .foregroundColor(.accentColor)
            //: TEXTFIELD
            SearchPanelView(ingredientsList: $ingredients)
                .padding(.horizontal ,4)
            //: INGREDIENTS LIST
            VStack {
                HStack() {
                    Text("Your ingredients :")
                        .padding()
                    .foregroundColor(.accentColor)
                    Spacer()
                    Button("Clear" ,action: {
                        ingredients.removeAll()
                    })
                    .buttonStyle(.bordered)
                    .cornerRadius(20)
                } //: HSTACK
                .padding(.horizontal, 6)
                List {
                    ForEach(ingredients, id: \.self) { item in
                        Text(item)
                    }
                    .onDelete { indexSet in
                        ingredients.remove(atOffsets: indexSet)
                    }
                }
            }
        } //: VSTACK
    }
}

// MARK: - PREVIEW
struct SearchRecipes_Previews: PreviewProvider {
    @State static var ingredientsPreview: [String] = ["Oignon", "Cheese"]
    static var previews: some View {
        SearchRecipes()
    }
}
