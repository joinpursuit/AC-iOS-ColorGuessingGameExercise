//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Krystal Campbell on 7/30/19.
//  Copyright © 2019 Krystal Campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomColorView: UIView!
    
    @IBOutlet weak var reusltsLabel: UILabel!
    
    @IBOutlet weak var currentScore: UILabel!
    
    @IBOutlet weak var highScore: UILabel!
    
    @IBOutlet var allButtons: [UIButton]!
    
    func disableButtons(){
        allButtons.forEach({$0.isEnabled = false})
    }
    
 var model = colorChange ()
 var score = 0
 var scoreModel = scoreKeeping()
    
    @IBAction func newGame(_ sender: UIButton) {
        scoreModel.resetScore()
        //reenable the button
        currentScore.text = String(scoreModel.currentScore)
        allButtons.forEach({$0.isEnabled = true})
        //closure used above*
    }
    
    func nextPlayerTurn (){
       model = colorChange()
        randomColorView.backgroundColor = model.randoColorGen()
        
    }
    func updateLabel(winOrLose: GameResult) {
        switch winOrLose {
        case .win :
            //scoreModel.updateScore()
            reusltsLabel.text = "You win"
            currentScore.text! = "Current Score:  \(scoreModel.currentScore)"
            highScore.text = "High Score:\(scoreModel.highScore)"
           
        case .lose:
            reusltsLabel.text = "You lose"
            
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        switch sender.tag{
        case 0:
            if model.getDominantColor() == UIColor.red {
                updateLabel(winOrLose: .win)
                nextPlayerTurn()
                scoreModel.updateScore()
                 currentScore.text! = "Current Score:  \(scoreModel.currentScore)"
                highScore.text = "High Score:\(scoreModel.highScore)"
                
            } else {
                 updateLabel(winOrLose: .lose)
                nextPlayerTurn()
                disableButtons()
                
            }
        case 1:
            if model.getDominantColor() == UIColor.green {
                updateLabel(winOrLose: .win)
                nextPlayerTurn()
                scoreModel.updateScore()
                 currentScore.text! = "Current Score:  \(scoreModel.currentScore)"
                highScore.text = "High Score:\(scoreModel.highScore)"
            } else {
                updateLabel(winOrLose: .lose)
                nextPlayerTurn()
               disableButtons()
            }
        case 2:
            if model.getDominantColor() == UIColor.blue {
                updateLabel(winOrLose: .win)
                nextPlayerTurn()
                scoreModel.updateScore()
                 currentScore.text! = "Current Score:  \(scoreModel.currentScore)"
                highScore.text = "High Score:\(scoreModel.highScore)"
            } else {
                updateLabel(winOrLose: .lose)
                nextPlayerTurn()
                disableButtons()
            }
           
        default:
            print("this will never happen")
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       randomColorView.backgroundColor = model.randoColorGen()
//        score = scoreModel.currentScore
       // scoreModel.updateScore()
    }


}
