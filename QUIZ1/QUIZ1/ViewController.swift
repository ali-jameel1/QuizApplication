//
//  ViewController.swift
//  QUIZ1
//
//  Created by Ali Jameel on 2021-11-14.
//

import UIKit

class ViewController: UIViewController{
   @IBOutlet var questionLabel: UILabel!
   @IBOutlet var answerLabel: UILabel!

   let questions: [String] = [
        "What does let mean in swift?",
        "What is an Outlet in swift?",
        "What is the airspeed of a swallow?"
        ]
   let answers: [String] = [
       "It denotes a constant",
       "A reference binding to a UI object",
       "11 m/sec"
       ]

   var currentQuestionIndex: Int = 0

    @IBAction func showNextQuestion(_ sender: UIButton){
        print("Show Next Question pressed")
        currentQuestionIndex = (currentQuestionIndex + 1) % questions.count
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "????"
        
    }
    @IBAction func showAnswer(_ sender: UIButton){
        print("Show Answer pressed");
        let answer: String = answers[currentQuestionIndex];
        answerLabel.text = answer;
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        questionLabel.text = questions[currentQuestionIndex];
    }
}
