//
//  TableViewController.swift
//  DovizTakip
//
//  Created by Hüseyin Savaş on 30.06.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    var photoList: [String] = []
    var rateList: [String] = []
    var networkController = NetworkController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoList = ["dollars", "euros", "pound"]
        rateList = ["USD", "EUR", "GBP"]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rateList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        networkController.getData(rate: rateList[indexPath.row]) { price in
            
            DispatchQueue.main.async {
                cell.myLabel.text = price.name + "\t" + String(price.result.turkish) + "₺"
                
                self.title = price.time
            }
        }
        
        cell.myPhoto.image = UIImage(named: "\(photoList[indexPath.row])")

        return cell
    }
}
