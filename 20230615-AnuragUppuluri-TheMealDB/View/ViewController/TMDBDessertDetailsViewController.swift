//
//  TMDBDessertDetailsViewController.swift
//  20230615-AnuragUppuluri-TheMealDB
//
//  Created by Anurag Uppuluri on 6/18/23.
//

import UIKit
import AVKit
import AVFoundation

protocol TMDBDessertDetailsProtocol: AnyObject {
    func displayDessertDetails()
}

class TMDBDessertDetailsViewController: UIViewController, TMDBDessertDetailsProtocol {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nationalityLabel: UILabel!
    @IBOutlet weak var instructionsLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var measurementsLabel: UILabel!
    var vm = TMDBDessertDetailsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        initViewModel()
        if let existingDetails = detailsCache.object(forKey: NSString(string: vm.currentDessertID)) {
            vm.currentDessertDetails = existingDetails
        }
        else { vm.loadDataSource() }
    }
    
    func initViewModel() {
        vm.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func playVideoPressed(_ sender: UIButton) {
        guard let url = URL(string: vm.currentDessertDetails?.strYoutube ?? K.defaultDessertVideo) else { return }
        print(url)

        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        let player = AVPlayer(url: url)


        // Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = player


        // Modally present the player and call the player's play() method when complete.
        present(controller, animated: true) {
            player.play()
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: — TMDBDessertDetailsViewController Helper Methods

extension TMDBDessertDetailsViewController {
    func displayDessertDetails() {
        if let name = vm.currentDessertDetails?.strMeal {
            nameLabel.text = name
        }
        if let id = vm.currentDessertDetails?.idMeal {
            idLabel.text = id
        }
        if let nationality = vm.currentDessertDetails?.strArea {
            nationalityLabel.text = nationality
        }
        if let instructions = vm.currentDessertDetails?.strInstructions {
            instructionsLabel.text = instructions
        }
        vm.currentIngredients = ""
        if let ingredient = vm.currentDessertDetails?.strIngredient1 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient2 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient3 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient4 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient5 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient6 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient7 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient8 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient9 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient10 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient11 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient12 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient13 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient14 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient15 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient16 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient17 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient18 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient19 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        if let ingredient = vm.currentDessertDetails?.strIngredient20 {
            vm.currentIngredients.append(ingredient + ", ")
        }
        ingredientsLabel.text = vm.currentIngredients
        vm.currentMeasurements = ""
        if let measurement = vm.currentDessertDetails?.strMeasure1 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure2 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure3 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure4 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure5 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure6 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure7 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure8 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure9 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure10 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure11 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure12 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure13 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure14 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure15 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure16 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure17 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure18 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure19 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        if let measurement = vm.currentDessertDetails?.strMeasure20 {
            vm.currentMeasurements.append(measurement + ", ")
        }
        measurementsLabel.text = vm.currentMeasurements
    }
}
