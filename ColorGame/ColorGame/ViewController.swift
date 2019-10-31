//
//  ViewController.swift
//  ColorGame
//
//  Created by Jaheed Haynes on 10/29/19.
//  Copyright © 2019 Jaheed Haynes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titlePrompt: UILabel!
    @IBOutlet weak var colorGuessBox: UIView!
    @IBOutlet weak var buttonRed: UIButton!
    @IBOutlet weak var buttonBlue: UIButton!
    @IBOutlet weak var buttonGreen: UIButton!
    @IBOutlet weak var buttonRestart: UIButton!
    @IBOutlet weak var scoreOutletLabel: UILabel!
    @IBOutlet weak var highScoreOutletLabel: UILabel!
    
    
    var red = CGFloat.random(in: 0...1)
    var blue = CGFloat.random(in: 0...1)
    var green = CGFloat.random(in: 0...1)
    
    var currentScore = 0
    var currentHighScore = 0
    var newHighScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomColor() // changes color of the viewBox
        
// Changing the color of the color choice buttons
        buttonRed.backgroundColor = .red
        buttonBlue.backgroundColor = .blue
        buttonGreen.backgroundColor = .green

    }
 //------------------------------------------------------------------------------------------
    func randomColor() {
       
        _ = CGFloat.random(in: 0...1)
        _ = CGFloat.random(in: 0...1)
        _ = CGFloat.random(in: 0...1)

        colorGuessBox.backgroundColor = myColor

    }
//------------------------------------------------------------------------------------------

 
    @IBAction func buttonAction(_ sender: UIButton) {
        randomColor()
        colorChoiceActionResult(sender)
    }
    

    
    func colorChoiceActionResult(_ sender: UIButton) {

        switch sender.tag {
        case 0:
            if red > green &&  red > blue {
                titlePrompt.text = "CORRECT 🤩"
                currentScore += 1
                scoreOutletLabel.text = "Score: \(currentScore)"
                

            } else {
                titlePrompt.textColor = .blue
                titlePrompt.text = "WRONG 👻"
                currentScore = 0
                scoreOutletLabel.text = "Score: \(currentScore)"

            }

        case 1:
            if blue > green &&  blue > red {
                titlePrompt.text = "CORRECT 🤩"
                currentScore += 1
                scoreOutletLabel.text = "Score: \(currentScore)"

            } else {
                titlePrompt.textColor = .blue
                titlePrompt.text = "WRONG 👻"
                currentScore = 0
                scoreOutletLabel.text = "Score: \(currentScore)"
            }

        case 2:
            if green > blue &&  green > red {
                titlePrompt.text = "CORRECT 🤩"
                currentScore += 1
                scoreOutletLabel.text = "Score: \(currentScore)"

            } else {
                titlePrompt.textColor = .blue
                titlePrompt.text = "WRONG 👻"
                currentScore = 0
                scoreOutletLabel.text = "Score: \(currentScore)"
            }
            
        default:
            print("You Broke The Game")
    }
 }
    
    
    @IBAction func restartButtonAction(_ sender: UIButton) {
        randomColor()
        currentScore = 0
        scoreOutletLabel.text = "Score: \(currentScore)"
        
    }
    
    
    
}


