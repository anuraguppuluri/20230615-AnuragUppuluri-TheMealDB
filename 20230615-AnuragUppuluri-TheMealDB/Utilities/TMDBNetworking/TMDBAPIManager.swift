//
//  TMDBAPIManager.swift
//  20230615-AnuragUppuluri-TheMealDB
//
//  Created by Anurag Uppuluri on 6/15/23.
//

import Foundation

class TMDBAPIManager: NSObject {
    static let shared: TMDBAPIManager = {
        let instance = TMDBAPIManager()
        return instance
    }()

    private override init() {
        super.init()
    }
    
    func decodeDesserts(urlString: String, completionHandler: @escaping (_ success: Bool, _ results: [Meal]?, _ error: String?) -> ()) {
        TMDBNetworkManager.shared.getData(urlString: urlString) { success, data in
            if success {
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let obj = try decoder.decode(Desserts.self, from: data!)
                    completionHandler(true, obj.meals, nil)
                } catch {
                    print("Error: \(error)")
                    completionHandler(false, nil, error.localizedDescription)
                }
            } else {
                completionHandler(false, nil, "Encountered GET request error")
            }
        }
    }
    
    func decodeDessertDetails(urlString: String, completionHandler: @escaping (_ success: Bool, _ results: Dessert?, _ error: String?) -> ()) {
        TMDBNetworkManager.shared.getData(urlString: urlString) { success, data in
            if success {
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let obj = try decoder.decode(DessertDetails.self, from: data!)
                    completionHandler(true, obj.meals?[0], nil)
                } catch {
                    print("Error: \(error)")
                    completionHandler(false, nil, error.localizedDescription)
                }
            } else {
                completionHandler(false, nil, "Encountered GET request error")
            }
        }
    }
}
