//
//  QuizVc.swift
//  knowdegePages
//
//  Created by Himangshu Baruah on 2024-11-03.
//

import UIKit

class QuizVC: UIViewController {
    
    // Question structure
    struct Question {
        let question: String
        let answers: [String]
        let correctAnswer: Int
    }
    
    
    var questions: [Question] = [
        Question(question: "Which element of the water we drink is older than the Sun?", answers: ["Hydrogen", "Oxygen", "Both Hydrogen and Oxygen", "None of the above"], correctAnswer: 2),

        Question(question: "What is unique about the 'Zone of Silence' in Mexico?", answers: ["Clocks run backward", "Animals disappear", "Radios stop working", "Water boils at room temperature"], correctAnswer: 2),

        Question(question: "How many trees that existed before the birth of Jesus still remain on Earth?", answers: ["10", "12", "14", "16"], correctAnswer: 2),

        Question(question: "What percentage of the world's oxygen supply is claimed to be produced by the Amazon rainforest?", answers: ["25%", "30%", "50%", "75%"], correctAnswer: 2),

        Question(question: "What material is the femur bone stronger than?", answers: ["Plastic", "Concrete", "Glass", "Aluminum"], correctAnswer: 1),

        Question(question: "Which part of the body doesn’t hurt when pinched?", answers: ["Elbow skin", "Neck skin", "Palm skin", "Knee skin"], correctAnswer: 0),

        Question(question: "Which part of the human body cannot heal itself?", answers: ["Skin", "Muscles", "Teeth", "Bones"], correctAnswer: 2),

        Question(question: "What actually happens when you crack your knuckles?", answers: ["Bones are damaged", "Arthritis is caused", "Ligaments are torn", "Gas bubbles burst"], correctAnswer: 3),

        Question(question: "What nickname is given to the natural gas crater burning since 1971 in Turkmenistan?", answers: ["Hell's Gate", "The Pit of Fire", "The Door to Hell", "The Burning Abyss"], correctAnswer: 2),

        Question(question: "Which plant is known for removing radioactive contaminants from the soil?", answers: ["Rose", "Lily", "Sunflower", "Tulip"], correctAnswer: 2),
        
        Question(question: "What percentage of an adult human's body is made up of water?", answers: ["50%", "60%", "70%", "80%"], correctAnswer: 1)
    ]
    
    var currentQuestion: Question?
    var currentQuestionPos = 0
    var noCorrect = 0

    
    @IBOutlet weak var LblQuuestion: UITextView!
    @IBOutlet weak var Answer0: UIButton!
    @IBOutlet weak var Answer1: UIButton!
    @IBOutlet weak var Answer2: UIButton!
    @IBOutlet weak var Answer3: UIButton!

    
    @IBAction func Option1(_ sender: UIButton) {
        checkAnswer(idx: 0)
    }
    
    @IBAction func Option2(_ sender: UIButton) {
        checkAnswer(idx: 1)
    }
    
    @IBAction func Option3(_ sender: UIButton) {
        checkAnswer(idx: 2)
    }
    
    @IBAction func Option4(_ sender: UIButton) {
        checkAnswer(idx: 3)
    }

    @IBAction func exitQuiz(_ sender: Any) {
        self.performSegue(withIdentifier: "exitQuiz", sender: self)
    }
   
    func checkAnswer(idx: Int) {
        if idx == currentQuestion!.correctAnswer {
            noCorrect += 1
        }
        loadNextQuestion()
    }
    
    func loadNextQuestion() {
        if currentQuestionPos + 1 < questions.count {
            currentQuestionPos += 1
            currentQuestion = questions[currentQuestionPos]
            setQuestion()
        } else {
            performSegue(withIdentifier: "ShowResults", sender: self)
        }
    }
    
   
    func setQuestion() {
        LblQuuestion.text = currentQuestion!.question
        Answer0.setTitle(currentQuestion!.answers[0], for: .normal)
        Answer1.setTitle(currentQuestion!.answers[1], for: .normal)
        Answer2.setTitle(currentQuestion!.answers[2], for: .normal)
        Answer3.setTitle(currentQuestion!.answers[3], for: .normal)
    }
    
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowResults" {
            let vc = segue.destination as! QuizResult
            vc.noCorrect = noCorrect
            vc.total = questions.count
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion = questions[0]
        setQuestion()
    }
}
