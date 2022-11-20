//
//  RecipeHeaderView.swift
//  Reciplease Swift UI
//
//  Created by Florent on 18/11/2022.
//

import SwiftUI

struct RecipeHeaderView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    
    @State private var isAnimatingImage: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } //: ZSTACK
        .onAppear() {
        withAnimation(.easeOut(duration: 0.5)) {
            isAnimatingImage = true
        }
    }
    }
    
}

// MARK: - PREVIEW
struct RecipeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHeaderView(recipe: recipesData[1])
    }
}
