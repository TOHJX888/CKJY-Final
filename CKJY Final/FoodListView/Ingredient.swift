//
//  Ingredients.swift
//  CKJY Final
//
//  Created by Celine Quek on 20/11/23.
//

import Foundation

struct Ingredient: Identifiable, Codable {
    var id = UUID()
    var name: String
    var healthyRating: Int
    var isEaten: Bool = false
}
