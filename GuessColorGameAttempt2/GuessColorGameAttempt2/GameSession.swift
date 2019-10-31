//
//  GameSession.swift
//  GuessColorGameAttempt2
//
//  Created by Amy Alsaydi on 10/30/19.
//  Copyright © 2019 Amy Alsaydi. All rights reserved.
//

import UIKit

class GuessGameSession {
    var randomNumArr = [CGFloat]()
    var randRed: CGFloat = 0.0
    var randGreen: CGFloat = 0.0
    var randBlue: CGFloat = 0.0
    var score = 0
    var arrayOfScores: [Int] = [0]
    
    func createDisplayColor() -> UIColor {
           randRed = CGFloat.random(in: 0...1)
           randGreen = CGFloat.random(in: 0...1)
           randBlue = CGFloat.random(in: 0...1)
           
           randomNumArr.append(randRed)
           randomNumArr.append(randGreen)
           randomNumArr.append(randBlue)
           
        let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: 1)
        print(randomNumArr)
        return myColor
           
       }
    
    func getComparingTag() -> Int {
        
        let highestRandom = self.randomNumArr.max()
        guard let highestColor = highestRandom
            else {
                return 0
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
        
        return comparingTag
    }
        
    }

