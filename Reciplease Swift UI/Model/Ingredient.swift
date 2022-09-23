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

extension Ingredient {
    
    static func all() -> [Ingredient] {
        return [
            Ingredient(id: 1, name: "Eggs"),
            Ingredient(id: 2, name: "Mushroom"),
            Ingredient(id: 3, name: "Cheese"),
            Ingredient(id: 4, name: "Salt"),
            Ingredient(id: 5, name: "Oignon"),
            Ingredient(id: 6, name: "Pepper"),
            Ingredient(id: 7, name: "Mints"),
        ]
    }
}


