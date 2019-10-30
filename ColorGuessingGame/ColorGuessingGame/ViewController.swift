//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Yuliia Engman on 10/30/19.
//  Copyright © 2019 Yuliia Engman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var colorDisplayScreen: UIView!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    var redValue = CGFloat.random(in: 0...1)
    var greenValue = CGFloat.random(in: 0...1)
    var blueValue = CGFloat.random(in: 0...1)
    
    @IBOutlet weak var gameStatusLabel: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redValue = CGFloat.random(in: 0...1)
        greenValue = CGFloat.random(in: 0...1)
        blueValue = CGFloat.random(in: 0...1)
        self.colorDisplayScreen.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
        randomColor()
        gameStatusLabel.text = "Welcome to Color Guessing Game. Pick button with color that contains the most it in view above."
        // Do any additional setup after loading the view.
    }
    
    func randomColor(){
        let redValue = CGFloat.random(in: 0...1)
        let greenValue = CGFloat.random(in: 0...1)
        let blueValue = CGFloat.random(in: 0...1)
        
        self.colorDisplayScreen.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
    }
    
    //    redValue = CGFloat(drand48())
    //    greenValue = CGFloat(drand48())
    //    blueValue = CGFloat(drand48())
    
    
    @IBAction func colorButtons(_ sender: UIButton) {
        randomColor()
        
        let colorArray = [redValue, greenValue, blueValue]
        //        self.colorDisplayScreen.backgroundColor = colorArray.max()
        
        switch sender.tag {
        case 0:
            if colorArray.max() == redValue {
                score += 1
                gameStatusLabel.text = "You guessed correctly! Your current score is \(score). Keep playing."
                let redValue = CGFloat.random(in: 0...1)
                let greenValue = CGFloat.random(in: 0...1)
                let blueValue = CGFloat.random(in: 0...1)
                
                self.colorDisplayScreen.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
            } else {
                gameStatusLabel.text = "Wrong guess. Your score is \(score). Game over!"
                // playAgain()
            }
        case 1:
            if colorArray.max() == greenValue {
                score += 1
                gameStatusLabel.text = "You guessed correctly! Your current score is \(score). Keep playing."
                let redValue = CGFloat.random(in: 0...1)
                let greenValue = CGFloat.random(in: 0...1)
                let blueValue = CGFloat.random(in: 0...1)
                
        self.colorDisplayScreen.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
            } else {
                gameStatusLabel.text = "Wrong guess. Your score is \(score). Game over!"
                // playAgain()
            }
        case 2:
            if colorArray.max() == blueValue {
                score += 1
                gameStatusLabel.text = "You guessed correctly! Your current score is \(score). Keep playing."
                let redValue = CGFloat.random(in: 0...1)
                let greenValue = CGFloat.random(in: 0...1)
                let blueValue = CGFloat.random(in: 0...1)
                self.colorDisplayScreen.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
            } else {
                gameStatusLabel.text = "Wrong guess. Your score is \(score). Game over!"
                // playAgain()
            } default:
                gameStatusLabel.text = "error"
            }
    }
        }

//    
//    @IBAction func playAgain(_ sender: UIButton) {
//    }
    


