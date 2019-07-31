//
//  ViewController.swift
//  colorGame
//
//  Created by Jack Wong on 7/30/19.
//  Copyright © 2019 Jack Wong. All rights reserved.
//  Worked with Sunni Tang

import UIKit

class ViewController: UIViewController {
    //view and label
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var newGameOutlet: UIButton!
    //color buttons
    
    @IBOutlet var allButtons: [UIButton]!
    
    
    @IBOutlet weak var redBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!
    
    @IBOutlet weak var currentScoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var currentScoreNumber: UILabel!
    @IBOutlet weak var highScoreNumber: UILabel!
    
    var highScoreValue = 0
    var currentColor = RGBValues.init()
    
    @IBAction func decision(_ sender: UIButton) {

        var userChoice: UIColor
        
        switch sender.tag{
        case 0:
            userChoice = UIColor.red
        case 1:
            userChoice = UIColor.green
        case 2:
            userChoice = UIColor.blue
        default:
            userChoice = UIColor.black
            // this should not happen anyway
        }
        
        let answer = currentColor.checkGuess(userChoice)
        
        if answer{
            sender.pulsate()
            self.currentScoreNumber.text = String(currentColor.currentScore)
            
            self.currentColor.assignNewColor()
            self.colorView.backgroundColor = currentColor.randomColor
            
        }else{
            sender.shake()
            //Shouldn't be able to tap on the color buttons since it's game over
            disableButtons()
            gameOverLabel.isHidden = false
            newGameOutlet.isHidden = false
            
            gameOverLabel.flash()
            
        }
        
    }
    
    func disableButtons() {
        self.redBtn.isEnabled = false
        self.greenBtn.isEnabled = false
        self.blueBtn.isEnabled = false
    }
    
    
    @IBAction func newGameBtn(_ sender: UIButton) {
        //Determine high score by comparing to the current score
        if highScoreValue < currentColor.currentScore{
            highScoreValue = currentColor.currentScore
        }
        
        highScoreNumber.text = String(highScoreValue)
        //Reset Current Score
        currentScoreNumber.text = "0"
        currentColor.currentScore = 0
        
        //Assign random color for next round
        currentColor.assignNewColor()
        colorView.backgroundColor = currentColor.randomColor
        
        //enable color buttons
        redBtn.isEnabled = true
        greenBtn.isEnabled = true
        blueBtn.isEnabled = true
        
        //hide what's not needed currently
        hideWhenRequired()
    }
    
    func hideWhenRequired(){
        gameOverLabel.isHidden = true
        newGameOutlet.isHidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        currentScoreLabel.layer.borderWidth = 1.0
//        currentScoreLabel.layer.borderColor = UIColor.orange.cgColor
        colorView.layer.borderWidth = 2.0
        colorView.layer.borderColor = UIColor.black.cgColor
        colorView.layer.cornerRadius = 8

        
        for button in allButtons{
            button.layer.cornerRadius = 8
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.borderWidth = 1.0
        }
        
        questionLabel.text = "Which color is the sample above closest to?"
        questionLabel.layer.cornerRadius = 8
        
        newGameOutlet.layer.cornerRadius = newGameOutlet.frame.height / 2
        newGameOutlet.clipsToBounds = true
        newGameOutlet.setTitle("New Game", for: .normal)
        newGameOutlet.layer.borderWidth = 1.0
        newGameOutlet.layer.borderColor = UIColor.black.cgColor
        
        hideWhenRequired()
        
        //Starting random color
        colorView.backgroundColor = currentColor.randomColor
    }


}

