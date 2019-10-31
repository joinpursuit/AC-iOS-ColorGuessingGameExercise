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
    var scoresOfGame = Set<Int>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayedColor.backgroundColor! = ColorModel.genRandomColor()
        //userFeedBack.isHidden = true
    }
    
    @IBAction func guessColor(_ guessColor: UIButton) {
        //userFeedBack.isHidden.toggle()
        if guessColor.tag == ColorModel.getMaxColor(bgColor: displayedColor.backgroundColor!) {
            score+=1
            scoresOfGame.insert(score)
            userFeedBack.text = "Correct guess. Your score is \(score). Your highest score is \(scoresOfGame.max()!)"
            displayedColor.backgroundColor! = ColorModel.genRandomColor()
        } else  {
            score = 0
            scoresOfGame.insert(score)
            userFeedBack.text = "Incorrect guess. Your score is \(score). Your highest score is \(scoresOfGame.max()!)"
            displayedColor.backgroundColor! = ColorModel.genRandomColor()
        }
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        score = 0
        scoresOfGame.removeAll()
        userFeedBack.text = "Unknown guess. Your score is 0 and you highest score is 0."
        displayedColor.backgroundColor! = ColorModel.genRandomColor()
    }
    
    
}

