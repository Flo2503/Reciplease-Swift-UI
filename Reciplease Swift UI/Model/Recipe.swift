//
//  Recipe.swift
//  Reciplease Swift UI
//
//  Created by Florent on 08/09/2022.
//

import Foundation

struct Recipe: Decodable, Equatable, Identifiable {
    var id = UUID()
    let label: String
    let image: String
    let url: String
    let yield: Int
    let ingredientLines: [String]
    let totalTime: Int
}


