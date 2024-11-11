//
//  ThirdVC.swift
//  knowdegePages
//
//  Created by Himangshu Baruah on 2024-10-25.
//

import UIKit

class ThirdVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup code
    }
    
    @IBAction func GoBack(_ sender: Any) {
        self.performSegue(withIdentifier: "goFromThirdToFirst", sender: self)
    }

   
}
