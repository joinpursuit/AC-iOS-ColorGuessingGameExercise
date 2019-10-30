//
//  ViewController.swift
//  ColorGuessGame
//
//  Created by Tanya Burke on 10/30/19.
//  Copyright © 2019 Tanya Burke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randRed = CGFloat.random(in: 0...1)
    var randGreen = CGFloat.random(in: 0...1)
    var randBlue = CGFloat.random(in: 0...1)
    @IBOutlet weak var colorScreen: UIView!
    @IBOutlet weak var choiceLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randRed = CGFloat.random(in: 0...1)
        randGreen = CGFloat.random(in: 0...1)
        randBlue = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: CGFloat.random(in: 0...1))
        colorScreen.backgroundColor = myColor
        
    }
    var score = Int()
var gameOver = false
    @IBAction func colorButtons(_ sender: UIButton) {
        
        let colorsArray = [randRed, randBlue, randGreen]
        
        let colorMax = colorsArray.max()

        if gameOver == false {
        switch sender.tag {
        case 0:
            if colorMax == randRed {
                choiceLabel.text = "Correct Choice"
                score = score + 1
                randRed = CGFloat.random(in: 0...1)
                randGreen = CGFloat.random(in: 0...1)
                randBlue = CGFloat.random(in: 0...1)
                let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: CGFloat.random(in: 0...1))
                colorScreen.backgroundColor = myColor
            } else {
                choiceLabel.text = "Incorrect"
                gameOver = true
                
            }
            case 1:
            if colorMax == randBlue {
                choiceLabel.text = "Correct Choice"
                score = score + 1
                randRed = CGFloat.random(in: 0...1)
                randGreen = CGFloat.random(in: 0...1)
                randBlue = CGFloat.random(in: 0...1)
                let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: CGFloat.random(in: 0...1))
                colorScreen.backgroundColor = myColor
            } else {
                choiceLabel.text = "Incorrect"
                gameOver = true
            }
            case 2:
               if colorMax == randGreen {
                   choiceLabel.text = "Correct Choice"
                   score = score + 1
                   randRed = CGFloat.random(in: 0...1)
                   randGreen = CGFloat.random(in: 0...1)
                   randBlue = CGFloat.random(in: 0...1)
                   let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: CGFloat.random(in: 0...1))
                   colorScreen.backgroundColor = myColor
               } else {
                   choiceLabel.text = "Incorrect"
                   gameOver = true
               }
        default:
            choiceLabel.text = "Error"
        }
        }
        scoreLabel.text = "Score: \(score)"
        
    }
    
    @IBAction func reset(_ sender: UIButton) {
        randRed = CGFloat.random(in: 0...1)
        randGreen = CGFloat.random(in: 0...1)
        randBlue = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: CGFloat.random(in: 0...1))
        colorScreen.backgroundColor = myColor
        scoreLabel.text = "Score: 0"
        choiceLabel.text = " "
        score = 0
        gameOver = false
        
    }
}

