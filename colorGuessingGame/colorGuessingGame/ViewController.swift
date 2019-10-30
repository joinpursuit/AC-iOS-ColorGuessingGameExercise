//
//  ViewController.swift
//  colorGuessingGame
//
//  Created by Liubov Kaper  on 10/29/19.
//  Copyright © 2019 Luba Kaper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redButton: UIButton!
    
    
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var blueButton: UIButton!
    
    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var guessColorLabel: UILabel!
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    var score = 0
    
    
    var redValue = CGFloat.random(in: 0...1)
    var greenValue = CGFloat.random(in: 0...1)
    var blueValue = CGFloat.random(in: 0...1)
    var resetBool = true
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redValue = CGFloat.random(in: 0...1)
        greenValue = CGFloat.random(in: 0...1)
        blueValue = CGFloat.random(in: 0...1)
        
        self.colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
    }
    
    @IBAction func randomColorButton(_ sender: UIButton) {
        
        
        let colorArray = [redValue, greenValue, blueValue]
        
        //let currentColor =  colorArray.max()
        
        if resetBool == true {
        switch sender.tag {
        case 0:
            if colorArray.max() == redValue{
                guessColorLabel.text = "Correct!"
                redValue = CGFloat.random(in: 0...1)
                greenValue = CGFloat.random(in: 0...1)
                blueValue = CGFloat.random(in: 0...1)
                self.colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
                score += 1
                scoreLabel.text = "Your score is \(score)"
                
            } else {
                guessColorLabel.text = "You Loose. Press reset button to start over"
                resetBool = false
                score += 0
            }
            
        case 1:
            if colorArray.max() == greenValue{
                guessColorLabel.text = "Correct!"
                redValue = CGFloat.random(in: 0...1)
                greenValue = CGFloat.random(in: 0...1)
                blueValue = CGFloat.random(in: 0...1)
                self.colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
                score += 1
                scoreLabel.text = "Your score is \(score)"
                
            } else {
                guessColorLabel.text = "You Loose. Press reset button to start over"
                resetBool = false
                score += 0
            }
        case 2:
            if colorArray.max() == blueValue{
                guessColorLabel.text = "Correct!"
                redValue = CGFloat.random(in: 0...1)
                greenValue = CGFloat.random(in: 0...1)
                blueValue = CGFloat.random(in: 0...1)
                self.colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
                
                score += 1
                scoreLabel.text = "Your score is \(score)"
                
            } else {
                guessColorLabel.text = "You Loose. Press reset button to start over"
                resetBool = false
                score += 0
            }
        default:
            guessColorLabel.text = "error"
            
        }
        }
       
        
        print("R color = \(redValue), G Color = \(greenValue) B Color = \(blueValue)")
        
        
        //        blueButton.isEnabled = true
        
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        redValue = CGFloat.random(in: 0...1)
        greenValue = CGFloat.random(in: 0...1)
        blueValue = CGFloat.random(in: 0...1)
        self.colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
        
        guessColorLabel.text = "Guess the color!"
        score = 0
        scoreLabel.text = "SCORE"
        resetBool = true
    }
    
}

