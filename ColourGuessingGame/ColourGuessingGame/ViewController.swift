//
//  ViewController.swift
//  ColourGuessingGame
//
//  Created by Cameron Rivera on 10/29/19.
//  Copyright © 2019 Cameron Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colourView: UIView!
    @IBOutlet weak var viewLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    var score: Int = 0
    var highScore: Int = 0
    var colourInQuestion = Colour(redComponent: 1, greenComponent: 1, blueComponent: 1)
    var winningTag: Int = -1
    var difficulty: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colourView.backgroundColor = colourInQuestion.createSimpleRandomColour()
        winningTag = colourInQuestion.getWinningTag()
        scoreLabel.text = "Score: \(score)"
        highScoreLabel.text = "High Score: \(highScore)"
    }
    
    @IBAction func newGameModerate(_ sender: UIButton){
        for subview in view.subviews{
            if subview.tag < 3{
                subview.isUserInteractionEnabled = true
            }
        }
        score = 0
        difficulty = 1
        colourView.backgroundColor = colourInQuestion.createSimpleRandomColour()
        winningTag = colourInQuestion.getWinningTag()
        viewLabel.text = "Which colour is the most prominent?"
        scoreLabel.text = "Score: \(score)"
        highScoreLabel.text = "High Score: \(highScore)"
        
    }
    
    @IBAction func newGameDifficult(_ sender: UIButton){
        for subview in view.subviews{
            if subview.tag < 3{
                subview.isUserInteractionEnabled = true
            }
        }
        score = 0
        difficulty = 2
        colourView.backgroundColor = colourInQuestion.createDifficultRandomColour()
        winningTag = colourInQuestion.getWinningTag()
        viewLabel.text = "Which colour is the most prominent?"
        scoreLabel.text = "Score: \(score)"
        highScoreLabel.text = "High Score: \(highScore)"
        
    }
    
    @IBAction func newGameNutty(_ sender: UIButton){
        for subview in view.subviews{
            if subview.tag < 3{
                subview.isUserInteractionEnabled = true
            }
        }
        score = 0
        difficulty = 3
        colourView.backgroundColor = colourInQuestion.createLunaticRandomColour()
        winningTag = colourInQuestion.getWinningTag()
        viewLabel.text = "Which colour is the most prominent?"
        scoreLabel.text = "Score: \(score)"
        highScoreLabel.text = "High Score: \(highScore)"
        
    }
    
    @IBAction func guessedColour(_ sender: UIButton){
        if sender.tag == winningTag{
            viewLabel.text = "Correct!"
            switch difficulty{
            case 1:
                colourView.backgroundColor = colourInQuestion.createSimpleRandomColour()
            case 2:
                colourView.backgroundColor = colourInQuestion.createDifficultRandomColour()
            case 3:
                colourView.backgroundColor = colourInQuestion.createLunaticRandomColour()
            default:
                break
            }
            
            winningTag = colourInQuestion.getWinningTag()
            score += 1
            scoreLabel.text = "Score: \(score)"
        } else {
            viewLabel.text = "Game Over"
            if score > highScore{
                highScore = score
                highScoreLabel.text = "High Score: \(score)"
            }
            for subview in view.subviews{
                if subview.tag < 3{
                    subview.isUserInteractionEnabled = false
                }
            }
        }
        
    }


}

