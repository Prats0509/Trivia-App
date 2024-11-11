//
//  ViewController.swift
//  knowdegePages
//
//  Created by Himangshu Baruah on 2024-10-25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var labelValue: String = ""
    @IBOutlet weak var labelWelcome: UILabel!
    @IBAction func bodyButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goToSecond", sender: self)
    }
    @IBAction func natureButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goToThird", sender: self)
    }
    
    
    @IBAction func quizButton(_ sender: Any) {
        self.performSegue(withIdentifier: "QuizSegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? SecondVC{
            if segue.identifier == "goToSecond" {
                //destinationVC.labelValue = labelWelcome
            }
            
        }
        if let destinationVC = segue.destination as? QuizVC{
            if segue.identifier == "QuizSegue" {
                //destinationVC.labelValue = labelWelcome
            }
        }
        
    }
}

