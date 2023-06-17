//
//  TMDBDessertsDataModel.swift
//  20230615-AnuragUppuluri-TheMealDB
//
//  Created by Anurag Uppuluri on 6/16/23.
//

import Foundation

// MARK: - Desserts
struct Desserts: Codable {
    let meals: [Meal]?
}

// MARK: - Meal
struct Meal: Codable {
    let strMeal: String?
    let strMealThumb: String?
    let idMeal: String?
}
