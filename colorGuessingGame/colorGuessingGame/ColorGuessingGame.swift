//
//  ColorGuessingGame.swift
//  colorGuessingGame
//
//  Created by Howard Chang on 10/29/19.
//  Copyright © 2019 Howard Chang. All rights reserved.
//

import Foundation
import UIKit

struct ColorGuessingGame {
    var highestScore: Int
    var score: Int
    var randomColor: UIColor { .randomColor() }
    
    mutating func newHighestScore() -> Int {
        if score > highestScore {
            highestScore = score
        }
        return highestScore
    }
}
