//
//  Recipe.swift
//  Reciplease Swift UI
//
//  Created by Florent on 08/09/2022.
//

import Foundation

struct Recipe: Decodable, Equatable, Identifiable {
    var id: Int
    let label: String
    let image: String
    let url: String
    let yield: Int
    let ingredientLines: [String]
    let totalTime: Int
}

extension Recipe {
    
    static func allRecipes() -> [Recipe] {
        return [
            Recipe(id: 0, label: "Omelette", image: "Omelette", url: "", yield: 1, ingredientLines: ["Oeufs", "Poivrons", "Champignons"], totalTime: 15),
            Recipe(id: 1, label: "Tacos", image: "Tacos", url: "", yield: 5, ingredientLines: ["Poulet", "Poivrons", "Fromage"], totalTime: 18),
            Recipe(id: 2, label: "Burger", image: "Burger", url: "", yield: 4, ingredientLines: ["Pain", "Steak", "Fromage", "Salade"], totalTime: 20),
            Recipe(id: 3, label: "PIzza", image: "PIzza", url: "", yield: 4, ingredientLines: ["Pate à pizza", "Chorizo", "Fromage"], totalTime: 12),
            Recipe(id: 4, label: "Pates", image: "Pates", url: "", yield: 5, ingredientLines: ["Pates", "Lardons", "Crème fraiche"], totalTime: 19)
        ]
    }
}


