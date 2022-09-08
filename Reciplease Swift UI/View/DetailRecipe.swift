//
//  DetailRecipe.swift
//  Reciplease Swift UI
//
//  Created by Florent on 08/09/2022.
//

import SwiftUI

struct DetailRecipe: View {
    
    let recipe: Recipe
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailRecipe_Previews: PreviewProvider {
    static var previews: some View {
        DetailRecipe(recipe: recipes[0])
    }
}
