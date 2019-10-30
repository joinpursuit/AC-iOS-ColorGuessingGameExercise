//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Edward O'Neill on 10/29/19.
//  Copyright © 2019 Edward O'Neill. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userAction: UILabel!
    @IBOutlet weak var randomColor: UIView!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var highestScore: UILabel!
    
    var scoreCount = 0
    var highestScoreCount = 0
    let color = GuessColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomColor.backgroundColor = color.random()
        redButton.backgroundColor = .red
        greenButton.backgroundColor = .green
        blueButton.backgroundColor = .blue
    }
    
    @IBAction func rightColor(_ sender: UIButton) {
        guard let ranColor = randomColor.backgroundColor?.rgba else { return }
        if sender.backgroundColor == color.highestColor(ranColor.red, ranColor.blue, ranColor.green) {
            scoreCount += 1
            if scoreCount > highestScoreCount {
                highestScoreCount += 1
            }
            randomColor.backgroundColor = color.random()
            score.text =  "Score: \(scoreCount)"
            highestScore.text =  "Score: \(highestScoreCount)"
        } else {
            userAction.text = "Game Over"
            redButton.isEnabled = false
            blueButton.isEnabled = false
            greenButton.isEnabled = false
        }
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        scoreCount = 0; score.text =  "Score: \(scoreCount)"
        randomColor.backgroundColor = color.random()
        redButton.isEnabled = true
        blueButton.isEnabled = true
        greenButton.isEnabled = true
        userAction.text = "Pick the closest color"
    }
}
