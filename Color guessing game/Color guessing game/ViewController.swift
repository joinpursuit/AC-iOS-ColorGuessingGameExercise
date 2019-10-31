//
//  ViewController.swift
//  Color guessing game
//
//  Created by Bienbenido Angeles on 10/29/19.
//  Copyright © 2019 Bienbenido Angeles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var displayedColor: UIView!
    @IBOutlet weak var userFeedBack: UILabel!
    
    var score = 0
    var scoresOfGame = [Int]()
    //var highestScore = 0
    //found solution on https://stackoverflow.com/questions/45423321/cannot-use-instance-member-within-property-initializer but don't understand why randomColor can be used across all functions
    
    lazy var bgColor = displayedColor.backgroundColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bgColor = ColorModel.genRandomColor()
        //userFeedBack.isHidden = true
    }
    
    @IBAction func guessColor(_ guessColor: UIButton) {
        //userFeedBack.isHidden.toggle()
        if guessColor.tag == ColorModel.getMaxColor(bgColor: bgColor) {
            score+=1
            scoresOfGame.append(score)
            userFeedBack.text = "Correct guess. Your score is \(score). Your highest score is \(scoresOfGame.max()!)"
            bgColor = ColorModel.genRandomColor()
        } else  {
            score = 0
            scoresOfGame.append(score)
            userFeedBack.text = "Incorrect guess. Your score is \(score). Your highest score is \(scoresOfGame.max()!)"
        }
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        score = 0
        scoresOfGame.removeAll()
        userFeedBack.text = "Unknown guess. Your score is 0 and you highest score is 0."
    }
    
    
}

