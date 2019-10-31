//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Yuliia Engman on 10/30/19.
//  Copyright © 2019 Yuliia Engman. All rights reserved.
//

//let fontSize = self.label.font.pointSize;
//self.label.font = UIFont(name: "HelveticaNeue", size: fontSize)
//label.font = UIFont(name:"fontname", size: 20.0)

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var colorDisplayScreen: UIView!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    var redValue = CGFloat.random(in: 0...1)
    var greenValue = CGFloat.random(in: 0...1)
    var blueValue = CGFloat.random(in: 0...1)
    var randomNumOfColor = CGFloat.random(in: 0...1)
    
    @IBOutlet weak var gameStatusLabel: UILabel!
    @IBOutlet weak var nameOfTheGame: UILabel!
    
    var score = 0
    var totalScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfTheGame.text = "COLOR GUESSING GAME"
        colorDisplayScreen.layer.borderColor = UIColor.black.cgColor
        randomNumOfColor = CGFloat.random(in: 0...1)
        
        self.colorDisplayScreen.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
        
        gameStatusLabel.text = "Pick button with color that contains the most of it on screen above."
        // Do any additional setup after loading the view.
    }
    
    @IBAction func colorButtons(_ sender: UIButton) {
        //randomColor()
        
        let colorArray = [redValue, greenValue, blueValue]
        
        switch sender.tag {
        case 0:
            if colorArray.max() == redValue {
                score += 1
                totalScore += 1
                gameStatusLabel.text = "You guessed correctly! Your current score is \(score). Total score of the game is \(totalScore). Keep playing."
                redValue = CGFloat.random(in: 0...1)
                greenValue = CGFloat.random(in: 0...1)
                blueValue = CGFloat.random(in: 0...1)
                
                self.colorDisplayScreen.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
            } else {
                gameStatusLabel.text = "Wrong guess. Your total score of the game is \(totalScore). Game over!"
            }
        case 1:
            if colorArray.max() == greenValue {
                score += 1
                totalScore += 1
                gameStatusLabel.text = "You guessed correctly! Your current score is \(score). Total score of the game is \(totalScore). Keep playing."
                redValue = CGFloat.random(in: 0...1)
                greenValue = CGFloat.random(in: 0...1)
                blueValue = CGFloat.random(in: 0...1)
                
                self.colorDisplayScreen.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
            } else {
                gameStatusLabel.text = "Wrong guess. Your total score of the game is \(totalScore). Game over!"
            }
        case 2:
            if colorArray.max() == blueValue {
                score += 1
                totalScore += 1
                gameStatusLabel.text = "You guessed correctly! Your current score is \(score). Total score of the game is \(totalScore). Keep playing."
                redValue = CGFloat.random(in: 0...1)
                greenValue = CGFloat.random(in: 0...1)
                blueValue = CGFloat.random(in: 0...1)
                self.colorDisplayScreen.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
            } else {
                gameStatusLabel.text = "Wrong guess. Your total score of the game is \(totalScore). Game over!"
            } default:
                gameStatusLabel.text = "error"
        }
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        score = 0
        viewDidLoad()
    }
}




