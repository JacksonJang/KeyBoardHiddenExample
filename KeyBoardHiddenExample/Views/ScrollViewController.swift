//
//  ScrollViewController.swift
//  KeyBoardHiddenExample
//
//  Created by 장효원 on 2021/12/28.
//

import UIKit

class ScrollViewController: UIViewController {
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createEndEditingForScrollView()
    }
    
    func createEndEditingForScrollView() {
        let singleTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(eventEndEdit))
        singleTapGestureRecognizer.numberOfTapsRequired = 1
        singleTapGestureRecognizer.isEnabled = true
        singleTapGestureRecognizer.cancelsTouchesInView = false
        scrollView.addGestureRecognizer(singleTapGestureRecognizer)
    }
    
    @objc func eventEndEdit() {
        self.view.endEditing(true)
    }
}
