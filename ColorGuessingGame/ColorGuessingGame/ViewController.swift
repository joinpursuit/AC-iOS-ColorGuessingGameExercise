//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Amy Alsaydi on 10/29/19.
//  Copyright © 2019 Amy Alsaydi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorDisplay: UIView!
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var red: UIButton!
    @IBOutlet weak var green: UIButton!
    @IBOutlet weak var blue: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateViewColor()
        
        red.backgroundColor = .red
        green.backgroundColor = .green
        blue.backgroundColor = .blue
        
        
    }
    
    @IBAction func guessColor(_ sender: UIButton) {
                
        if sender.backgroundColor == colorDisplay.backgroundColor {
            displayLabel.text = "correct keep going"
            updateViewColor()
        } else {
            displayLabel.text = "You Lose! try again"
            red.isEnabled = false
            blue.isEnabled = false
            green.isEnabled = false
        }        
    }
    
    func updateViewColor() {
        let randRed = CGFloat.random(in: 0...1)
        let randGreen = CGFloat.random(in: 0...1)
        let randBlue = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: 1)
        
        // print(randomColor)
        
        colorDisplay.backgroundColor = myColor
        
        
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        updateViewColor()
        red.isEnabled = true
        blue.isEnabled = true
        green.isEnabled = true
        
    }
}

