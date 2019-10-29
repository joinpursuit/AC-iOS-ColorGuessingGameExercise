//
//  extension.swift
//  colorGuessingGame
//
//  Created by Howard Chang on 10/29/19.
//  Copyright © 2019 Howard Chang. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    static func randomColor() -> UIColor {
        return UIColor.rgb(red: CGFloat(Int.random(in: 0...255)), green: CGFloat(Int.random(in: 0...255)), blue: CGFloat(Int.random(in: 0...255)))
    }
    
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        return (red, green, blue, alpha)
    }
}

extension UIView {
    func attributes() {
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
    }
}
    
    extension UIButton {
    func buttonAttributes() {
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
    }
}

extension UILabel {
    func labelAttributes() {
    self.layer.cornerRadius = 5.0
    self.layer.masksToBounds = true
    self.layer.borderWidth = 1
    self.layer.borderColor = UIColor.black.cgColor
}
}
