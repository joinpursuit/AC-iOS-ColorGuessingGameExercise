//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Sunni Tang on 7/30/19.
//  Copyright © 2019 Sunni Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentScore: UILabel!
    @IBOutlet weak var highScore: UILabel!
    @IBOutlet weak var colorBoard: UIView!
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var newGameLabel: UIButton!
    
    var highScoreValue = 0
    var currentColor = RGBValues.init()
    
    @IBAction func makeGuess(_ sender: UIButton) {
        var userGuess: UIColor

        switch sender.tag {
            case 0:
                userGuess = UIColor.red
            case 1:
                userGuess = UIColor.green
            case 2:
                userGuess = UIColor.blue
            default:
                userGuess = UIColor.black
        }
        
        let answer = currentColor.checkGuess(userGuess)
        
        if answer {
            self.currentScore.text = "Current Score: \(currentColor.currentScore)"

            self.currentColor.assignNewColor()
            self.colorBoard.backgroundColor = currentColor.randomColor
            
        } else {
            
            disableButtons()
            self.gameOverLabel.isHidden = false
            self.newGameLabel.isHidden = false

            
        }
        
    }
    
    func disableButtons() {
        self.redButton.isEnabled = false
        self.greenButton.isEnabled = false
        self.blueButton.isEnabled = false
    }
    
    
    @IBAction func startNewGame(_ sender: UIButton) {
        
        //assign high score
        if highScoreValue < currentColor.currentScore {
            highScoreValue = currentColor.currentScore
        }
        self.highScore.text = "High Score: \(highScoreValue)"
        
        //reset counter
        self.currentScore.text = "Current Score: 0"
        self.currentColor.currentScore = 0
        
        //reset random color
        self.currentColor.assignNewColor()
        self.colorBoard.backgroundColor = currentColor.randomColor
        
        //enable buttons
        self.redButton.isEnabled = true
        self.greenButton.isEnabled = true
        self.blueButton.isEnabled = true
        
        //hide game over buttons
        hideGOButtons()
        
    }
    
    func hideGOButtons() {
        self.gameOverLabel.isHidden = true
        self.newGameLabel.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.colorBoard.backgroundColor = currentColor.randomColor
        hideGOButtons()
        
    }


}

