//
//  model.swift
//  ColorGuessingGame
//
//  Created by Krystal Campbell on 7/31/19.
//  Copyright © 2019 Krystal Campbell. All rights reserved.
//

import Foundation
import UIKit

struct colorChange{
    var red: CGFloat = 0.0
    var blue: CGFloat = 0.0
    var green: CGFloat = 0.0
    var alpha: CGFloat = 1.0
    
mutating func mixColor () -> UIColor {
    red = CGFloat.random(in: 0...1)
    green = CGFloat.random(in: 0...1)
    blue = CGFloat.random(in: 0...1)
    alpha = 1
    let myColor = UIColor(red:red, green:green, blue:blue, )
}
