//
//  Ingredient.swift
//  Reciplease Swift UI
//
//  Created by Florent on 16/09/2022.
//

import Foundation

struct Ingredient: Identifiable, Hashable {
    var id: Int
    let name: String
}

let ingredientsList = [
    Ingredient(id: 1, name: "Eggs"),
    Ingredient(id: 2, name: "Mushroom"),
    Ingredient(id: 3, name: "Cheese")
]


