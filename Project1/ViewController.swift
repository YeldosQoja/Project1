//
//  ViewController.swift
//  Project1
//
//  Created by Yeldos Kozhabay on 17.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cityTableView: UITableView!
    
    var countries = Country.countries
    
    private var cellIdentifier = "Cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let country = countries[indexPath.row]
        
        var configuration = cell.defaultContentConfiguration()
        
        configuration.text = country.name
        configuration.secondaryText = country.population
        
        cell.contentConfiguration = configuration
        
        return cell
    }
}

