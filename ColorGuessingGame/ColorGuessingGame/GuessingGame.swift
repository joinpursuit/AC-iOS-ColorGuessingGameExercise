//
//  ColorGuess.swift
//  ColorGuessingGame
//
//  Created by Ahad Islam on 10/29/19.
//  Copyright © 2019 Ahad Islam. All rights reserved.
//

import UIKit

struct GuessingGame {
    static var highScore = 0
    static var score = 0
    
    static func randomUIColor() -> UIColor {
        return UIColor(red: CGFloat.random(in: 0...1),
                       green: CGFloat.random(in: 0...1),
                       blue: CGFloat.random(in: 0...1),
                       alpha: CGFloat.random(in: 0...1))
    }
    
    static func rgbValue(_ view: UIColor) -> Int {
           var red: CGFloat = 0
           var green: CGFloat = 0
           var blue: CGFloat = 0
           var alpha: CGFloat = 0
           view.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
           
           if red >= green && red >= blue {
               return 0
           } else if green >= red && green >= blue {
               return 1
           } else {
               return 2
           }
       }
}

