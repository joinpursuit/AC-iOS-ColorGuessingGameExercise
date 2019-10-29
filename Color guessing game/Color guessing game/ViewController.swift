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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rgb = [UIColor.red, UIColor.green, UIColor.blue]
        let randomColor = rgb.randomElement()!
        displayedColor.backgroundColor = randomColor
    }
    
    
    @IBAction func guessColor(_ guessColor: UIButton) {
        switch guessColor.tag {
        case 0:
            displayedColor.backgroundColor = .red
        case 1:
            displayedColor.backgroundColor = .green
        case 2:
            displayedColor.backgroundColor = .blue
        default:
            displayedColor.backgroundColor = .red
        }
        
    }
    
}

