//
//  IngredientCell.swift
//  Reciplease Swift UI
//
//  Created by Florent on 23/09/2022.
//

import SwiftUI

struct IngredientCell: View {
    
    var ingredient: Ingredient
    
    var body: some View {
        VStack {
            Button(action: {}) {
                Image(systemName: "xmark.circle")
                    .foregroundColor(.customPink)
                    .font(.title3)
            }
            Text(ingredient.name)
        }
    }
}

#if DEBUG
struct IngredientCell_Previews: PreviewProvider {
    static var previews: some View {
        IngredientCell(ingredient: Ingredient.all()[0]).previewLayout(.fixed(width: 50, height: 50))
    }
}
#endif
