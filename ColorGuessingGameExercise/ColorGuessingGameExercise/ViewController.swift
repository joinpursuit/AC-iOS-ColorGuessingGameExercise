//
//  ViewController.swift
//  ColorGuessingGameExercise
//
//  Created by Joshua Wynter on 10/30/19.
//  Copyright © 2019 Joshua Wynter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var innerView: UIView!
    
    @IBOutlet weak var resetButton: UIButton!
    
    var correctAnswer = "" //#3
    
    
    ///Button 1
    let button = UIButton(frame: CGRect(x: 25, y: 800, width: 100, height: 50)) //Creates a button and gives it a position x,y and a width and height
    
    ///Button 2
    let button2 = UIButton(frame: CGRect(x: 165, y: 800, width: 100, height: 50 ))
        
    ///Button 3
    let button3 = UIButton(frame: CGRect(x: 300, y: 800, width: 100, height: 50))
    
    
    @IBAction func resetButton(_ sender: UIButton) { //#5
        randomColor()
        button.isEnabled = true
        button2.isEnabled = true
        button3.isEnabled = true
        button.backgroundColor = .red
        button2.backgroundColor = .green
        button3.backgroundColor = .blue // button 3 background turns blue
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        randomColor() // #1
        
        
        //[randColor]
        button.backgroundColor = .red
        button.setTitle("red", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.tag = 0
        
        button2.backgroundColor = .green
        button2.setTitle("green", for: .normal)
        button2.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button2.tag = 1
        
        button3.backgroundColor = .blue
        button3.setTitle("blue", for: .normal)
        button3.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button3.tag = 2

        self.view.addSubview(button3)
        self.view.addSubview(button2)
        self.view.addSubview(button)
        
    }
    
    
    
    
    func randomColor() { // #2
        let redNum = CGFloat.random(in: 0...1)
              let greenNum = CGFloat.random(in: 0...1)
              let blueNum = CGFloat.random(in: 0...1)
              
              let myColor = UIColor(red: redNum, green: greenNum, blue: blueNum, alpha: 1)
              print("Red is \(redNum), Blue is \(blueNum), Green is \(greenNum)")
        
              self.innerView.backgroundColor = myColor
        
        let arrayOfColorNumber = [redNum, blueNum, greenNum]
           
           if redNum == arrayOfColorNumber.max() {
               correctAnswer = "red"
           } else if greenNum == arrayOfColorNumber.max() {
               correctAnswer = "green"
           } else if blueNum == arrayOfColorNumber.max() {
               correctAnswer = "blue"
           }
    }
    
    
    @objc func buttonAction(sender: UIButton!) { //#4
        //            print("pressed red button")
        switch sender.tag {
        case 0:
            print()
            if correctAnswer == sender.currentTitle {
                       displayLabel.text = "You Win!"
                randomColor()

//                       self.innerView.backgroundColor = myColor
                   } else {
                       displayLabel.text = "Better Luck Next Time"
                       button.isEnabled = false
                       button2.isEnabled = false
                       button3.isEnabled = false
                       button.backgroundColor = .gray
                       button2.backgroundColor = .gray
                       button3.backgroundColor = .gray
                   }
        case 1:
            print()
            if correctAnswer == sender.currentTitle {
                       displayLabel.text = "You Win!"
                randomColor()

//                       self.innerView.backgroundColor = myColor
                   } else {
                       displayLabel.text = "Better Luck Next Time"
                       button.isEnabled = false
                       button2.isEnabled = false
                       button3.isEnabled = false
                       button.backgroundColor = .gray
                       button2.backgroundColor = .gray
                       button3.backgroundColor = .gray
                   }
        case 2:
            print()
            if correctAnswer == sender.currentTitle {
                       displayLabel.text = "You Win!"
                randomColor()

//                       self.innerView.backgroundColor = myColor
                   } else {
                       displayLabel.text = "Better Luck Next Time"
                       button.isEnabled = false
                       button2.isEnabled = false
                       button3.isEnabled = false
                       button.backgroundColor = .gray
                       button2.backgroundColor = .gray
                       button3.backgroundColor = .gray
                   }
        default:
            print()
        }
        
        
   
        
       
        
        
        
        
        print(correctAnswer)
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
}







/*
 
 func randomColorGenerator() -> Int{
 let randomColor = Int(arc4random())
 return randomColor
 }
 // Do any additional setup after loading the view.
 //        let colors = [
 //        UIColor(red: 233/255, green: 203/255, blue: 198/255, alpha: 1),
 //        UIColor(red: 38/255, green: 188/255, blue: 192/255, alpha: 1),
 //        UIColor(red: 253/255, green: 221/255, blue: 164/255, alpha: 1),
 //        UIColor(red: 235/255, green: 154/255, blue: 171/255, alpha: 1),
 //        UIColor(red: 87/255, green: 141/255, blue:  155/255, alpha: 1)
 //        ]
 
 //timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("randomColorGenerator"), userInfo: nil, repeats: true)
 
 //let randColor = ViewController().randomColorGenerator()
 */
