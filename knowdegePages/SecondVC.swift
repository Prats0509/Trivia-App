//
//  SecondVC.swift
//  knowdegePages
//
//  Created by Himangshu Baruah on 2024-10-25.
//

import UIKit

class SecondVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup can go here.
    }
    
    @IBAction func ButtonGoBack(_ sender: Any) {
        self.performSegue(withIdentifier: "goFromSecondToFirst", sender: self)
    }
}
