//
//  GuessColor.swift
//  ColorGuessingGame
//
//  Created by Edward O'Neill on 10/29/19.
//  Copyright © 2019 Edward O'Neill. All rights reserved.
//

import UIKit

extension UIColor {
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        return (red, green, blue, alpha)
    }
}

struct GuessColor {
    func random() -> UIColor {
        UIColor.init(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: .random(in: 0...1))
    }
    
    func highestColor(_ red: CGFloat, _ blue: CGFloat, _ green: CGFloat) -> UIColor {
        if red > blue && red > green {
            return .red
        } else if green > blue && green > red {
            return .green
        } else if blue > green && blue > red {
            return .blue
        }
        return .red
    }
}
