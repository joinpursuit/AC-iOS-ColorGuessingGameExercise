//
//  ViewController.swift
//  GuessColorGameAttempt2
//
//  Created by Amy Alsaydi on 10/30/19.
//  Copyright © 2019 Amy Alsaydi. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var displayColor: UIView!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var scoreDisplay: UILabel!
    
    
    var guessGame = GuessGameSession()
    var score = 0
    var arrayOfScores = [0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDisplayColor()
        
    }

    @IBAction func userGuess(_ sender: UIButton) {
        if sender.tag == guessGame.getComparingTag(){
            displayLabel.text = "Correct! Keep Going! 👍🏼"
            score += 1
            scoreDisplay.text = "Higest Score: \(arrayOfScores.max() ?? 0) Your Score: \(score)"
            guessGame.randomNumArr.removeAll()
            updateDisplayColor()
            
        } else {
            arrayOfScores.append(score)
            redButton.isEnabled = false
            blueButton.isEnabled = false
            greenButton.isEnabled = false
            
            view.backgroundColor = .black
            displayLabel.textColor = .red
            displayLabel.text = "X X Wrong! You Lose! X X"
            scoreDisplay.textColor = .red
            scoreDisplay.text = "Higest Score: \(arrayOfScores.max() ?? 0) Your Score: \(score)"
            
        }
        
        
    }
    
    func updateDisplayColor() {
        displayColor.backgroundColor = guessGame.createDisplayColor()
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        displayLabel.textColor = .black
        scoreDisplay.textColor = .black
        view.backgroundColor = .white
        
        guessGame.randomNumArr.removeAll()
        score = 0
        displayLabel.text = "Match the color"
        scoreDisplay.text = "Score to beat: \(arrayOfScores.max() ?? 0)"
        displayColor.backgroundColor = guessGame.createDisplayColor()
        
        redButton.isEnabled = true
        blueButton.isEnabled = true
        greenButton.isEnabled = true
        
        
    }
}

