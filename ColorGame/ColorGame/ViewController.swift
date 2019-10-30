//
//  ViewController.swift
//  ColorGame
//
//  Created by Matthew Ramos on 10/29/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
       
    @IBOutlet weak var scoreboard: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var colorView: UIImageView!
    
    var randomRed: CGFloat = 0.0
    var randomBlue: CGFloat = 0.0
    var randomGreen: CGFloat = 0.0
    var randomAlpha: CGFloat = 0.0
    var correctAnswers = 0
    var incorrectAnswers = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func colorChoice(_ sender: UIButton) {
        let colorVals = [randomBlue, randomGreen, randomRed]
        let mostOfColor = colorVals.max()
        var colorTag = -1
        switch mostOfColor {
        case randomRed:
            colorTag = 0
        case randomGreen:
            colorTag = 1
        case randomBlue:
            colorTag = 2
        default:
            colorTag = 0
        }
        switch sender.tag {
        case colorTag:
            messageLabel.text = "Correct!"
            correctAnswers += 1
            scoreboard.text = "Hits: \(correctAnswers)| Misses: \(incorrectAnswers)"
        default:
            messageLabel.text = "Incorrect!"
            incorrectAnswers += 1
        }
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        messageLabel.text = "Select the closest matching color!"
        randomRed = CGFloat.random(in: 0...1)
        randomBlue = CGFloat.random(in: 0...1)
        randomGreen = CGFloat.random(in: 0...1)
        randomAlpha = CGFloat.random(in: 0...1)

        let myColor = UIColor(red: randomRed,
                              green: randomGreen,
                              blue: randomBlue,
                              alpha: randomAlpha)
        colorView.backgroundColor = myColor
        
    }
}

