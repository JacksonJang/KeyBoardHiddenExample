//
//  GeneralViewController.swift
//  KeyBoardHiddenExample
//
//  Created by 장효원 on 2021/12/28.
//

import UIKit

class GeneralViewController: UIViewController {
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
