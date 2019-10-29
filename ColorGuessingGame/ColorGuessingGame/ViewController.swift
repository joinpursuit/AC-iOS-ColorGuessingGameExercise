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
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let firstRandomColor = GuessingGame()
        colorView.backgroundColor = firstRandomColor.randomColor
    }
    
    @IBAction func colorButtonChoice(_ sender: UIButton) {
        guard let bgColor = colorView.backgroundColor else { return }
        let changingColor = GuessingGame()
        let x = rgbValue(bgColor)
        if sender.tag == x {
            displayLabel.text = "Correct!"
            score += 1
            scoreCounter.text = String(score)
            colorView.backgroundColor = changingColor.randomColor
            
            if score > GuessingGame.highScore {
                GuessingGame.highScore = score
                highScore.text = String(GuessingGame.highScore)
            }
        } else {
            displayLabel.text = "Wrong!"
            for button in colorButtons {
                button.isEnabled.toggle()
            }
        }
    }
    @IBAction func newGame(_ sender: UIButton) {
        let newColorChange = GuessingGame()
        score = 0
        scoreCounter.text = String(score)
        colorView.backgroundColor = newColorChange.randomColor
        displayLabel.text = "Choose a color."
        
        for button in colorButtons {
            button.isEnabled.toggle()
        }
        
        
    }
    
    func rgbValue(_ view: UIColor) -> Int {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        view.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        let rgbValues: [CGFloat] = [red, green, blue]
        if red == rgbValues.max() {
            return 0
        } else if green == rgbValues.max() {
            return 1
        } else {
            return 2
        }
    }
    
    
}

