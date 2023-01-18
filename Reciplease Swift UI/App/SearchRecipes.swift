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
            //: INGREDIENTS LIST
            VStack {
                Text("Your ingredients :")
                    .padding(.trailing, 200)
                    .foregroundColor(.accentColor)
                List(ingredients, id: \.self) { item in
                    Text(item)
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
