//
//  QuizResult.swift
//  knowdegePages
//
//  Created by Himangshu Baruah on 2024-11-03.
//



import UIKit

class QuizResult: UIViewController {
    
    var noCorrect = 0
    var total = 0
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblResult: UILabel!
    
    
    @IBAction func goHome(_ sender: Any) {
        self.performSegue(withIdentifier: "goHomeFromResult", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text = "You got \(noCorrect) out of \(total) correct"
        var percentRight = Double(noCorrect) / Double(total)
        percentRight *= 100
        var title = " "
        if(percentRight < 40){
            title = "You need to try again"
        }
        else if(percentRight < 70){
            title = "Almost"
        }
        else{
            title = "Wow you are good at facts"
        }
        lblTitle.text = title
    }
}
