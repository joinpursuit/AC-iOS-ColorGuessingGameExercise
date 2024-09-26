//
//  model.swift
//  ColorGuessingGame
//
//  Created by Krystal Campbell on 7/31/19.
//  Copyright © 2019 Krystal Campbell. All rights reserved.
//

import Foundation
import UIKit

enum GameResult {
    case win
    case lose
}

struct colorChange {
    var red: CGFloat = CGFloat.random(in: 0...1)
    var blue: CGFloat = CGFloat.random(in: 0...1)
    var green: CGFloat = CGFloat.random(in: 0...1)
    
    
    func randoColorGen () -> UIColor {
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        return color
    }
    
    func getDominantColor () -> UIColor {
        if red > blue && red > green {
            return UIColor.red
        }
       else if blue > red && blue > green {
            return UIColor.blue
        }
        else {
            return UIColor.green
        }
    }
}

struct scoreKeeping {
    var highScore = 0
    var currentScore = 0
    
    mutating func resetScore() {
        currentScore = 0
    }
    
    mutating func updateScore() {
        currentScore += 1
        if currentScore >= highScore {
            highScore = currentScore
        }
    }
}

