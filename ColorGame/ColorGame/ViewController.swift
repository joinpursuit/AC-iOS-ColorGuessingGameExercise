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
    
    func randomColor() -> UIColor {
         red = CGFloat.random(in: 0...1)
         blue = CGFloat.random(in: 0...1)
         green = CGFloat.random(in: 0...1)
         let newColor = UIColor.init(red: red, green: green, blue: blue, alpha: 1)
         return newColor
         //colorGuessBox.backgroundColor = myColor
         
     }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.


//------------------------------------------------------------------------------------------

        // changes color of the viewBox
        
        colorGuessBox.backgroundColor = randomColor()

//------------------------------------------------------------------------------------------

        
        // Changing the color of the color choice buttons
        
        buttonRed.backgroundColor = .red
        buttonBlue.backgroundColor = .blue
        buttonGreen.backgroundColor = .green

    }
//------------------------------------------------------------------------------------------

    // Color View Box
    
//    func randomColor() -> UIColor {
//        red = CGFloat.random(in: 0...1)
//        blue = CGFloat.random(in: 0...1)
//        green = CGFloat.random(in: 0...1)
//        let newColor = UIColor.init(red: red, green: green, blue: blue, alpha: 1)
//        return newColor
//        //colorGuessBox.backgroundColor = myColor
//
//    }
//------------------------------------------------------------------------------------------

    // color buttons choice (actionable button response)
 
    @IBAction func buttonAction(_ sender: UIButton) {
        colorGuessBox.backgroundColor = randomColor()
        colorChoiceActionResult(sender)
    }
    
//------------------------------------------------------------------------------------------

    // func to respond to button actions
    // correct answer = +1 in score
    // wrong answer reselt in score reverting back to 0
    
    func colorChoiceActionResult(_ sender: UIButton) {

        switch sender.tag {
        case 0:
            if red > green &&  red > blue {
                
                titlePrompt.text = "CORRECT 🤩"
                currentScore += 1
                scoreOutletLabel.text = "Current Score: \(currentScore)"
                 colorGuessBox.backgroundColor = randomColor()
                highScoreUpdated()

            } else {
                titlePrompt.textColor = .red
                titlePrompt.text = "WRONG 👻"
                currentScore = 0
                scoreOutletLabel.text = "Score: \(currentScore)"

            }

        case 1:
            if blue > green &&  blue > red {
                 colorGuessBox.backgroundColor = randomColor()
                titlePrompt.text = "CORRECT 🤩"
                currentScore += 1
                scoreOutletLabel.text = "Current Score: \(currentScore)"
                 highScoreUpdated()

            } else {
                titlePrompt.textColor = .blue
                titlePrompt.text = "WRONG 👻"
                currentScore = 0
                scoreOutletLabel.text = "Score: \(currentScore)"
            }

        case 2:
            if green > blue &&  green > red { colorGuessBox.backgroundColor = randomColor()
                titlePrompt.text = "CORRECT 🤩"
                currentScore += 1
                scoreOutletLabel.text = "Current Score: \(currentScore)"
                 highScoreUpdated()

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
    

//------------------------------------------------------------------------------------------
    
    @IBAction func restartButtonAction(_ sender: UIButton) {
        colorGuessBox.backgroundColor = randomColor()
        currentScore = 0
        scoreOutletLabel.text = "Score: \(currentScore)"
        
    }
    
//------------------------------------------------------------------------------------------
    
    func highScoreUpdated() {
       if currentScore > currentHighScore {
            currentHighScore = currentScore
        highScoreOutletLabel.text = ("HIGH SCORE: \(currentHighScore)")
        }
    }
    
}


