//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Amy Alsaydi on 10/29/19.
//  Copyright © 2019 Amy Alsaydi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets:
    
    @IBOutlet weak var colorDisplay: UIView!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!

    @IBOutlet weak var red: UIButton!
    @IBOutlet weak var green: UIButton!
    @IBOutlet weak var blue: UIButton!
    
    

    var randomNumArr = [CGFloat]()
    var randRed: CGFloat = 0.0
    var randGreen: CGFloat = 0.0
    var randBlue: CGFloat = 0.0
    var score = 0
    var arrayOfScores: [Int] = [0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // randomNumArr = [CGFloat]()
        displayLabel.text = "Match the correct color"
        updateDisplayColor()
        
        
    }
    
    @IBAction func guessColor(_ sender: UIButton) {
        
        print(randomNumArr)
        
        let highestRandom = randomNumArr.max()
        guard let highestColor = highestRandom
            else {
                return
        }
        var comparingTag = 0
        
        switch highestColor {
        case randRed:
            comparingTag = 0
        case randGreen:
            comparingTag = 1
        case randBlue:
            comparingTag = 2
        default:
            comparingTag = 2
        }
        
        if sender.tag == comparingTag {
            displayLabel.text = "correct keep going"
            score += 1
            scoreLabel.text = "Highest Score: \(arrayOfScores.max() ?? 0) Current Score: \(score)"
            
            randomNumArr.removeAll()
            updateDisplayColor()
        } else {
            displayLabel.text = "You Lose! try again"
            scoreLabel.text = "Highest Score: \(arrayOfScores.max() ?? 0) Final Score: \(score)"
            arrayOfScores.append(score)
            red.isEnabled = false
            blue.isEnabled = false
            green.isEnabled = false
        }
        
    }
    
    func updateDisplayColor() {
        randRed = CGFloat.random(in: 0...1)
        randGreen = CGFloat.random(in: 0...1)
        randBlue = CGFloat.random(in: 0...1)
        
        randomNumArr.append(randRed)
        randomNumArr.append(randGreen)
        randomNumArr.append(randBlue)
        
        let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: 1)
        colorDisplay.backgroundColor = myColor
        

 
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        print(arrayOfScores)
        
        randomNumArr.removeAll() //
        updateDisplayColor() //
        displayLabel.text = "Match the correct color"
        score = 0 //
        red.isEnabled = true
        blue.isEnabled = true
        green.isEnabled = true
        scoreLabel.text = "Score to beat : \(arrayOfScores.max() ?? 0)"
        
    }
}

