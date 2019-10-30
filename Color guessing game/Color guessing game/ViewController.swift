//
//  ViewController.swift
//  Color guessing game
//
//  Created by Bienbenido Angeles on 10/29/19.
//  Copyright © 2019 Bienbenido Angeles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var displayedColor: UIView!
    @IBOutlet weak var userFeedBack: UILabel!
    
    let redRandom = CGFloat.random(in: 0.0...1.0)
    let greenRandom = CGFloat.random(in: 0.0...1.0)
    let blueRandom = CGFloat.random(in: 0.0...1.0)
    let alphaRandom = CGFloat.random(in: 0.0...1.0)
    
    //found solution on https://stackoverflow.com/questions/45423321/cannot-use-instance-member-within-property-initializer but don't understand why randomColor can be used across all functions
    lazy var randomColor = UIColor(red: redRandom, green: greenRandom, blue: blueRandom, alpha: alphaRandom)
    
    var score = 0
    var attempts = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayedColor.backgroundColor = randomColor
    }
    
    
    
    @IBAction func guessColor(_ guessColor: UIButton) {
        
        if guessColor.tag == getMaxColor() {
            score+=1
            attempts+=1
            userFeedBack.text = "Correct guess. Your score is \(score)"
        } else  {
            attempts+=1
            userFeedBack.text = "Incorrect guess. Your score is \(score)"
        }
        
        
    }
    
    func getMaxColor () -> Int {
        
        var red = CGFloat() // 0
        var green = CGFloat() // 1
        var blue = CGFloat() // 2
        var alpha = CGFloat()
        var color = [CGFloat]()
        
        //how to refractor this code
        randomColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        color.append(red)
        color.append(green)
        color.append(blue)
        
        var maxColorIndex = -1
        
        //get index of max color
        for (index, rgb) in color.enumerated() {
            if rgb == color.max() {
                maxColorIndex = index
            }
        }
        return maxColorIndex
    }
    
}

