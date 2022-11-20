//
//  RecipeDetails.swift
//  Reciplease Swift UI
//
//  Created by Florent on 08/09/2022.
//

import SwiftUI

struct RecipeDetails: View {
    // MARK: - PROPERTIES
    
    let recipe: Recipe

    // MARK: - BODY
    var body: some View {
        NavigationView {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                         //: HEADER
                        ZStack {
                            RecipeHeaderView(recipe: recipe)
                        } //: ZSTACK
                        .overlay(
                            AddFavoriteButtonView()
                                .padding(.horizontal)
                                .padding(.top, 30),
                            alignment: .topTrailing
                        )
                        VStack(alignment: .leading, spacing: 15) {
                            HStack {
                                //: TITLE
                                Text(recipe.label)
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color("ColorPink"))
                                Spacer()
                                //: TOTAL TIME
                                RateOrTimeView(image: "timer", number: recipe.totalTime, unitOfMeasurement: "mn")
                                //: RATE
                                RateOrTimeView(image: "star.fill", number: recipe.yield)
                            }
                            //: INGREDIENTS LIST
                            Text("\(recipe.label) ingredients list :")
                                    .fontWeight(.bold)
                            
                             ForEach(recipe.ingredientLines, id: \.self) {
                                 item in
                                 Text("- \(item)")
                             }
                            Spacer()
                             //: LINK
                            DirectionsLinkView(recipeLabel: recipe.label)
                         } //: VSTACK
                        .padding(20)
                     } //: VSTACK
                } //: SCROLL
                .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct DetailRecipe_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(recipe: recipesData[2])
    }
}
