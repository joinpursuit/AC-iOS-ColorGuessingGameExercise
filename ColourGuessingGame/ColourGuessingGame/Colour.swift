//
//  Colour.swift
//  ColourGuessingGame
//
//  Created by Cameron Rivera on 10/29/19.
//  Copyright © 2019 Cameron Rivera. All rights reserved.
//

import UIKit

struct Colour{
    //MARK: Properties of Colour
    private var randomColour: UIColor
    private var redComponent: CGFloat
    private var greenComponent: CGFloat
    private var blueComponent: CGFloat
    
    //MARK: Methods of Colour
    
    // Initializer
    init(redComponent: CGFloat, greenComponent: CGFloat, blueComponent: CGFloat){
        self.redComponent = redComponent
        self.greenComponent = greenComponent
        self.blueComponent = blueComponent
        self.randomColour = UIColor(red: redComponent, green: greenComponent, blue: blueComponent, alpha: 1)
    }
    
    // Other methods
    mutating func createSimpleRandomColour() -> UIColor{
        var randomNumber: CGFloat
        for num in 0...2{
            randomNumber = CGFloat.random(in: 0...1)
            switch num{
            case 0:
                self.redComponent = randomNumber
            case 1:
                self.greenComponent = randomNumber
            case 2:
                self.blueComponent = randomNumber
            default:
                break
            }
        }
        self.randomColour = UIColor(red: redComponent, green: greenComponent, blue: blueComponent, alpha: 1)
        return randomColour
    }
    
    mutating func createDifficultRandomColour() -> UIColor{
        var randomNumber: CGFloat
        
        for num in 0...2{
            randomNumber = CGFloat.random(in: 0.25...0.75)
            switch num{
            case 0:
                self.redComponent = randomNumber
            case 1:
                self.greenComponent = randomNumber
            case 2:
                self.blueComponent = randomNumber
            default:
                break
            }
        }
        self.randomColour = UIColor(red: redComponent, green: greenComponent, blue: blueComponent, alpha: 1)
        return randomColour
    }
    
    mutating func createLunaticRandomColour() -> UIColor{
        var randomNumber: CGFloat
        for num in 0...2{
            randomNumber = CGFloat.random(in: 0...0.1)
            switch num{
            case 0:
                self.redComponent = randomNumber
            case 1:
                self.greenComponent = randomNumber
            case 2:
                self.blueComponent = randomNumber
            default:
                break
            }
        }
        self.randomColour = UIColor(red: redComponent, green: greenComponent, blue: blueComponent, alpha: 1)
        return randomColour
    }
    
    func getWinningTag() -> Int{
        if self.redComponent >= self.greenComponent && self.redComponent >= self.blueComponent{
           return 0
        } else if self.greenComponent >= self.redComponent && self.greenComponent >= self.blueComponent {
           return 2
        } else if self.blueComponent >= self.redComponent && self.blueComponent >= self.greenComponent {
           return 1
       }
        return -1
    }
    
    // Accessors of Colour
    func getRandomColour() -> UIColor{
        return self.randomColour
    }
    
    func getRedComponent() -> CGFloat {
        return self.redComponent
    }
    
    func getGreenComponent() -> CGFloat{
        return self.greenComponent
    }
    
    func getBlueComponent() -> CGFloat {
        return self.blueComponent
    }

    
    // Mutators of Colour
    
    mutating func setRandomColour(red: CGFloat, green: CGFloat, blue: CGFloat){
        self.randomColour = UIColor(red: red,green: green, blue: blue, alpha: 1)
    }
    mutating func setRedComponent(red: CGFloat){
        self.redComponent = red
    }
    mutating func setGreenComponent(green: CGFloat){
        self.greenComponent = green
    }
    mutating func setBlueComponent(blue: CGFloat){
        self.blueComponent = blue
    }
    
    
}
