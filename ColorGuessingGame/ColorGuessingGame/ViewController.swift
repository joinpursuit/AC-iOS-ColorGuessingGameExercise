//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Ahad Islam on 10/29/19.
//  Copyright © 2019 Ahad Islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet var colorButtons: [UIButton]!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var scoreCounter: UILabel!
    @IBOutlet weak var highScore: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.backgroundColor = GuessingGame.randomUIColor()
        playAgainButton.isHidden.toggle()
    }
    
    @IBAction func colorButtonChoice(_ sender: UIButton) {
        guard let bgColor = colorView.backgroundColor else { return }
        if sender.tag == GuessingGame.rgbValue(bgColor) {
            displayLabel.text = "Correct!"
            GuessingGame.score += 1
            scoreCounter.text = String(GuessingGame.score)
            colorView.backgroundColor = GuessingGame.randomUIColor()
            if GuessingGame.score > GuessingGame.highScore {
                GuessingGame.highScore = GuessingGame.score
                highScore.text = String(GuessingGame.highScore)
            }
        } else {
            displayLabel.text = "Wrong!"
            for button in colorButtons { button.isEnabled.toggle() }
            playAgainButton.isHidden.toggle()
        }
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        GuessingGame.score = 0
        scoreCounter.text = String(GuessingGame.score)
        displayLabel.text = "Choose a color."
        colorView.backgroundColor = GuessingGame.randomUIColor()
        for button in colorButtons { button.isEnabled.toggle() }
        playAgainButton.isHidden.toggle()
    }
}

