//
//  IngredientCell.swift
//  Reciplease Swift UI
//
//  Created by Florent on 23/09/2022.
//

import SwiftUI

struct IngredientCell: View {
    
    var ingredient = ""
    
    var body: some View {
        VStack {
            Button(action: {}) {
                Image(systemName: "xmark.circle")
                    .foregroundColor(.customPink)
            }
            Text(ingredient)
        }.font(.system(size: 15))
    }
}
