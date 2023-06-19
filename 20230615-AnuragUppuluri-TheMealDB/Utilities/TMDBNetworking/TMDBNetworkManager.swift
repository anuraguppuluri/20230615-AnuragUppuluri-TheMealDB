//
//  TMDBNetworkManager.swift
//  20230615-AnuragUppuluri-TheMealDB
//
//  Created by Anurag Uppuluri on 6/15/23.
//

import Foundation
import AVFoundation

class TMDBNetworkManager: NSObject {
    static let shared: TMDBNetworkManager = {
        let instance = TMDBNetworkManager()
        return instance
    }()

    private override init() {
        super.init()
    }
    
    func getData(urlString: String, completionHandler: @escaping (Bool, Data?) -> ()) {
        guard let url = URL(string: urlString) else {
            print("Error: cannot create URL from string")
            completionHandler(false, nil)
            return
        }
        let request = URLRequest(url: url)
        
        let dt = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error {
                print("Error hitting API with GET request:")
                print(error.localizedDescription)
                completionHandler(false, nil)
            }
            guard let data else {
                print("Error: Did not recieve data from API")
                completionHandler(false, nil)
                return
            }
            guard let response = response as? HTTPURLResponse, (200 ..< 300).contains(response.statusCode) else {
                print("Error: HTTP request did not get a response")
                completionHandler(false, nil)
                return
            }
            completionHandler(true, data)
        }
        dt.resume()
    }
}
