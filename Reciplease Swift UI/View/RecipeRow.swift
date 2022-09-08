//
//  RecipeRow.swift
//  Reciplease Swift UI
//
//  Created by Florent on 08/09/2022.
//

import SwiftUI

struct RecipeRow: View {
    
    let recipe: Recipe
    
    var body: some View {
        HStack {
            Image(recipe.image).resizable().aspectRatio(contentMode: .fit)
            VStack {
                Text(recipe.label).font(.title2).lineLimit(1).minimumScaleFactor(0.5)
                Text("Time :\(recipe.totalTime)")
                Text("Rate :\(recipe.yield)")
            }
            Spacer()
        }
    }
}

struct RecipeRow_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRow(recipe: recipes[0]).previewLayout(.fixed(width: 500, height: 150))
    }
}
