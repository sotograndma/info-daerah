//
//  ViewController.swift
//  Provinsi
//
//  Created by Dzaky Saputra on 12/11/20.
//

import UIKit

class ViewController: UIViewController {

    var propinsi = ["Aceh", "Bali", "Bangka Belitung", "Banten", "Gorontalo", "Jakarta", "Jawa Barat", "Jawa Tengah", "Jawa Timur", "Kalimantan Barat"]
    
    @IBOutlet weak var propinsiTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        propinsiTableView.delegate = self
        propinsiTableView.dataSource = self
        
        propinsiTableView.separatorStyle = .none
        propinsiTableView.showsVerticalScrollIndicator = false
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return propinsi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = propinsiTableView.dequeueReusableCell(withIdentifier: "cellPropinsi") as! PropinsiTableViewCell
        
        let prov = propinsi[indexPath.row]
        
        cell.propinsiLbl.text = prov
        cell.propinsiimg.image = UIImage(named: prov)
        
        cell.propinsiView.layer.cornerRadius = cell.propinsiView.frame.height / 2
        cell.propinsiimg.layer.cornerRadius = cell.propinsiimg.frame.height / 2
        
        return cell
    }
    
    
}
