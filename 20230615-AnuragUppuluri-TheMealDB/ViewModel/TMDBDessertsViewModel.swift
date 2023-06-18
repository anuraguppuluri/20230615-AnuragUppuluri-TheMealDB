//
//  TMDBDessertsViewModel.swift
//  20230615-AnuragUppuluri-TheMealDB
//
//  Created by Anurag Uppuluri on 6/18/23.
//

import Foundation

class TMDBDessertsViewModel {
    var delegate: TMDBDessertsProtocol?
    var dessertsDataSource: [Meal] = []
    
    func loadDataSource() {
        TMDBAPIManager.shared.decodeDesserts(url: K.dessertsURL) { [self] success, desserts, error in
            if success, let desserts {
                print(desserts)
                dessertsDataSource = desserts
                DispatchQueue.main.async { [self] in
                    delegate?.reloadTable()
                }
            } else {
                print(error!)
            }
        }
    }
    
    func segueWhenPressed(row: Int) {
        self.delegate?.segueToDessertDetails(row: row)
    }
}
