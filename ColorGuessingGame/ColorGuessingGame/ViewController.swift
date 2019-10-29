//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Edward O'Neill on 10/29/19.
//  Copyright © 2019 Edward O'Neill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomColor: UIView!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    let colorList: [UIColor] = [.brown, .darkGray, .orange, .purple, .systemBlue, .systemGreen]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomColor.backgroundColor = colorList.randomElement()
        redButton.backgroundColor = .red
        greenButton.backgroundColor = .green
        blueButton.backgroundColor = .blue
    }


}

