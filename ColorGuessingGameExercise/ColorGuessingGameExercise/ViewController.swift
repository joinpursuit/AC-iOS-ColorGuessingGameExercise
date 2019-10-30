//
//  ViewController.swift
//  ColorGuessingGameExercise
//
//  Created by Joshua Wynter on 10/30/19.
//  Copyright © 2019 Joshua Wynter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    func randomColorGenerator() -> Int{
        let randomColor = Int(arc4random())
        return randomColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let colors = [
        UIColor(red: 233/255, green: 203/255, blue: 198/255, alpha: 1),
        UIColor(red: 38/255, green: 188/255, blue: 192/255, alpha: 1),
        UIColor(red: 253/255, green: 221/255, blue: 164/255, alpha: 1),
        UIColor(red: 235/255, green: 154/255, blue: 171/255, alpha: 1),
        UIColor(red: 87/255, green: 141/255, blue:  155/255, alpha: 1)
        ]
        
        //timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("randomColorGenerator"), userInfo: nil, repeats: true)
        
        //let randColor = ViewController().randomColorGenerator()
        self.view.backgroundColor = colors.randomElement()!//[randColor]
        
        ///Button 1
        let button = UIButton(frame: CGRect(x: 25, y: 800, width: 100, height: 50))
        button.backgroundColor = .red
        button.setTitle("RED", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        ///Button 2
        let button2 = UIButton(frame: CGRect(x: 165, y: 800, width: 100, height: 50 ))
                    button2.backgroundColor = .green
                    button2.setTitle("Green", for: .normal)
                   button2.addTarget(self, action: #selector(buttonAction2), for: .touchUpInside)
        
        ///Button 3
        let button3 = UIButton(frame: CGRect(x: 300, y: 800, width: 100, height: 50))
                button3.backgroundColor = .blue
                button3.setTitle("Blue", for: .normal)
                button3.addTarget(self, action: #selector(buttonAction3), for: .touchUpInside)
                
        self.view.addSubview(button3)
        self.view.addSubview(button2)
        self.view.addSubview(button)
        
    }
        @objc func buttonAction(sender: UIButton!) {
            print("pressed red button")
           
}
        @objc func buttonAction2(sender: UIButton!) {
        print("pressed green button")

        
    }
    @objc func buttonAction3(sender: UIButton!) {
        print("pressed blue button")

    }
}
        


