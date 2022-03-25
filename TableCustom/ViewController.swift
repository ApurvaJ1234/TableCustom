//
//  ViewController.swift
//  TableCustom
//
//  Created by coditas on 25/03/22.
//

import UIKit

class ViewController: UIViewController {

    let arrCountry = ["India","USA","UAE","Australia","Pakistan","Bangladesh","China","Japan","Russia","Ukraine"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCountry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableCell") as! customTableCell
        
        cell.imageRow.image = UIImage(named: "pic")
        
        cell.lblName.text = arrCountry[indexPath.row]
        return cell
    }
    
    
}
