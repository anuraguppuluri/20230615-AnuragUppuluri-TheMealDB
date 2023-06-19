//
//  TMDBDessertDetailsViewModel.swift
//  20230615-AnuragUppuluri-TheMealDB
//
//  Created by Anurag Uppuluri on 6/18/23.
//

import Foundation

class TMDBDessertDetailsViewModel {
    var delegate: TMDBDessertDetailsProtocol?
    var currentDessertID = ""
    var currentDessertDetails: Dessert?
    var currentIngredients = ""
    var currentMeasurements = ""
    
    func loadDataSource() {
        TMDBAPIManager.shared.decodeDessertDetails(urlString: K.dessertDetailsURLString + currentDessertID) { [self] success, dessertDetails, error in
            if success, let dessertDetails {
                print(dessertDetails)
                currentDessertDetails = dessertDetails
                detailsCache.setObject(dessertDetails, forKey: NSString(string: currentDessertID))
            } else {
                print(error!)
            }
            DispatchQueue.main.async { [self] in
                delegate?.displayDessertDetails()
            }
        }
    }
    
    func displayData() {
        self.delegate?.displayDessertDetails()
    }
}
