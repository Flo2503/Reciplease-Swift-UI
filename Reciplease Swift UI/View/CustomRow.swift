//
//  CustomRow.swift
//  Reciplease Swift UI
//
//  Created by Florent on 12/09/2022.
//

import SwiftUI

struct CustomRow: View {
    
    let recipe: Recipe
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(12)
            RecipeObject(recipe: recipe)
        }
        .fixedSize(horizontal: false, vertical: true)
        .shadow(color: Color.pink.opacity(0.3), radius: 5, x: 0, y: 2)
    }
}

struct RecipeObject: View {
    
   let recipe: Recipe
    
   var body: some View {
       HStack {
           Image(recipe.image)
               .resizable()
               .frame(width: 100, height: 100)
               .cornerRadius(16)
               .padding()
           VStack {
               Text(recipe.label)
               Text("\(recipe.totalTime) mn")
           }
           .foregroundColor(.pink)
           .padding()
           Spacer()
       }
   }
}

struct CustomRow_Previews: PreviewProvider {
    static var previews: some View {
        CustomRow(recipe: Recipe.allRecipes().first!)
    }
}
