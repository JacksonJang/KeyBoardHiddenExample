//
//  ViewController.swift
//  KeyBoardHiddenExample
//
//  Created by 장효원 on 2021/12/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    var data:[String] = ["touchesBegan for General View", "touchesBegan for ScrollView"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        cell.titleLabel.text = data[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let index = indexPath.row
        
        if index == 0 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "GeneralViewController") as! GeneralViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        } else if index == 1 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ScrollViewController") as! ScrollViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
