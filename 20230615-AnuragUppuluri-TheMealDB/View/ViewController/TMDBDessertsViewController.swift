//
//  TMDBDessertsViewController.swift
//  20230615-AnuragUppuluri-TheMealDB
//
//  Created by Anurag Uppuluri on 6/15/23.
//

import UIKit

protocol TMDBDessertsProtocol: AnyObject {
    func segueToDessertDetails(row: Int)
    func reloadTable()
}

class TMDBDessertsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, TMDBDessertsProtocol {
    @IBOutlet weak var dessertsTable: UITableView!
    var vm = TMDBDessertsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initView()
        initViewModel()
        vm.loadDataSource()
    }

    func initView() {
        dessertsTable.delegate = self
        dessertsTable.dataSource = self
    }
    
    func initViewModel() {
        vm.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dessertsTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(K.dessertsCellHeight)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.dessertsDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return populateCell(row: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        vm.segueWhenPressed(row: indexPath.row)
    }
}

// MARK: — TMDBDessertsViewController Helper Methods

extension TMDBDessertsViewController {
    func populateCell(row: Int) -> UITableViewCell {
        let cell: TMDBDessertsTableViewCell? = dessertsTable.dequeueReusableCell(withIdentifier: K.dessertsCellID) as? TMDBDessertsTableViewCell
        guard let cell = cell else {
            return UITableViewCell()
        }
        if let name = vm.dessertsDataSource[row].strMeal {
            cell.nameLabel.text = name
        }
        if let id = vm.dessertsDataSource[row].idMeal {
            cell.idLabel.text = id
        }
        return cell
    }
    
    func segueToDessertDetails(row: Int) {
        let vc: TMDBDessertDetailsViewController? = storyboard?.instantiateViewController(withIdentifier: K.dessertDetailsViewID) as? TMDBDessertDetailsViewController
        guard let vc = vc else {
            return
        }
        //vc.vm.currentSchool = vm.dessertsDataSource[row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func reloadTable() {
        dessertsTable.reloadData()
    }
}

extension UIImageView {
    func downloadImageFrom(link: URL, contentMode: UIView.ContentMode, cacheID: Int) {
        DispatchQueue.global().async {
            URLSession.shared.dataTask(with: link) { data, response, error in
                if let data {
                    let imageFromData = UIImage(data: data)
                }
            }
        }
    }
}

