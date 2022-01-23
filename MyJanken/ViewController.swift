//
//  ViewController.swift
//  MyJanken
//
//  Created by 大杉祐弥 on 2022/01/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerImageView: UIImageView!
    @IBOutlet weak var answerLavel: UILabel!
    
    var answerNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func shaffleActionButton(_ sender: Any) {
//        answerNumber = Int.random(in: 0..<3)
        
        var newAnswerNumber = 0
        
        repeat {
            newAnswerNumber = Int.random(in: 0..<3)
        } while answerNumber == newAnswerNumber
                    
                    answerNumber = newAnswerNumber
                    
                    if answerNumber == 0 {
            answerLavel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
            
        } else if answerNumber == 1 {
            answerLavel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
            
        } else if answerNumber == 2 {
            answerLavel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
            
        }
//        answerNumber = answerNumber + 1
    }
    
}

