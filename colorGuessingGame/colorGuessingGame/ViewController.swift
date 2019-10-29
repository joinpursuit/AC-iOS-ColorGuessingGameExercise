//
//  ViewController.swift
//  colorGuessingGame
//
//  Created by Howard Chang on 10/29/19.
//  Copyright © 2019 Howard Chang. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    private var game = ColorGuessingGame(highestScore: 0, score: 0)
    private var buttonEnable: Bool = true
    private lazy var colorValues = randomColorView.backgroundColor?.rgba
    @IBAction func newGame(_ sender: UIButton) {
        startGame()
    }
    
    @IBOutlet weak var highestScoreLabel: UILabel!
    @IBOutlet weak var newGame: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var gameStatusLabel: UILabel!
    @IBOutlet weak var randomColorView: UIView!
    @IBOutlet weak var greenSelectorButton: UIButton!
    @IBOutlet weak var redSelectorButton: UIButton!
    @IBOutlet weak var blueSelectorButton: UIButton!
    
    @IBAction func redSelectorButton(_ sender: UIButton) {
        if buttonEnable == true {
            if Double(colorValues?.red ?? 0) > Double(colorValues?.blue ?? 0) && Double(colorValues?.red ?? 0) > Double(colorValues?.green ?? 0) {
                correctChoice()
            } else {
                wrongChoice()
            }
        }
    }
    
    @IBAction func greenSelectorButton(_ sender: UIButton) {
        if buttonEnable == true {
            if Double(colorValues?.green ?? 0) > Double(colorValues?.blue ?? 0) && Double(colorValues?.green ?? 0) > Double(colorValues?.red ?? 0) {
                correctChoice()
            } else {
                wrongChoice()
            }
        }
    }
    
    @IBAction func blueSelectorButton(_ sender: UIButton) {
        if buttonEnable == true {
            if Double(colorValues?.blue ?? 0) > Double(colorValues?.red ?? 0) && Double(colorValues?.blue ?? 0) > Double(colorValues?.green ?? 0) {
                correctChoice()
            } else {
                wrongChoice()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewAttributes()
        randomColorView.backgroundColor = game.randomColor
    }
    
    private func viewAttributes() {
        gameStatusLabel.attributes()
        randomColorView.gameViewAttributes()
        newGame.attributes()
        scoreLabel.attributes()
        highestScoreLabel.attributes()
        greenSelectorButton.attributes()
        redSelectorButton.attributes()
        blueSelectorButton.attributes()
    }
    
    private func wrongChoice() {
        gameStatusLabel.text = "  Wrong, start a new game"
        highestScoreLabel.text = "  Highest Score: \(game.newHighestScore())"
        buttonEnable = false
    }
    
    private func correctChoice() {
        randomColorView.backgroundColor = game.randomColor
        colorValues = randomColorView.backgroundColor?.rgba
        game.score += 1
        gameStatusLabel.text = "  Correct"
        scoreLabel.text = "  Score: \(game.score)"
    }
    
    private func startGame() {
        randomColorView.backgroundColor = game.randomColor
        highestScoreLabel.text = "  Highest Score: \(game.newHighestScore())"
        game.score = 0
        scoreLabel.text = "  Score: \(game.score)"
        buttonEnable = true
        gameStatusLabel.text = "  Pick The Dominant Color"
    }
    
}

