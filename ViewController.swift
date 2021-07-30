//
//  ViewController.swift
//  ios-rock-paper-scissors
//
//  Created by APPLE on 2021/01/15.
//

import UIKit

class ViewController: UIViewController {
    
    let imageName = ["paper", "rock", "scissors"]
    var P1 : String = ""
    var P2 : String = ""
    var temp : Bool = false
    
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var imageP1: UIImageView!
    @IBOutlet weak var imageP2: UIImageView!
    
    @IBOutlet weak var ButtonP1Text: UIButton!
    @IBOutlet weak var ButtonP2Text: UIButton!
    
    
    
    @IBAction func buttonP1(_ sender: UIButton) {
        
        let randomImage1 = imageName.randomElement()
        
        if let unwrapped1 = randomImage1{
            imageP1.image = UIImage(named: unwrapped1)
            P1 = unwrapped1
        }
        
        ButtonP1Text.isEnabled = false
        
        ButtonP1Text.setTitle("waiting", for:.normal)
        
        judgement()
   
        temp = true
        
    }
    
    
    
    
    @IBAction func buttonP2(_ sender: UIButton) {
        
        let randomImage2 = imageName.randomElement()
        
        if let unwrapped2 = randomImage2{
            imageP2.image = UIImage(named: unwrapped2)
            P2 = unwrapped2
        }
        
        ButtonP2Text.isEnabled = false
        
        ButtonP2Text.setTitle("waiting", for: .normal)
        
        judgement()
        
        temp = true
        
    }
    
    
    
    func judgement() {
        if (
            ButtonP1Text.isEnabled == false && ButtonP2Text.isEnabled == false && temp == true){
            ButtonP1Text.setTitle("P1 Go", for: .normal)
            ButtonP2Text.setTitle("P2 Go",for: .normal)
            
            if(P1 == "rock"){
                
                if(P2 == "scissors"){
                    winnerLabel.text = "P1 is winner!"}
                else if(P2 == "paper"){
                    winnerLabel.text = "P2 is winner!"}
                else{
                    winnerLabel.text = "DRAW"
                }
                
                
                
            }else if(P1 == "scissors"){
                
                if(P2 == "rock"){
                    winnerLabel.text = "P2 is winner!"}
                else if(P2 == "paper"){
                    winnerLabel.text = "P1 is winner!"}
                else{
                    winnerLabel.text = "DRAW"
                }
                
            }else if(P1 == "paper"){
                
                if(P2 == "scissors"){
                    winnerLabel.text = "P2 is winner!"}
                else if(P2 == "rock"){
                    winnerLabel.text = "P1 is winner!"}
                else{
                    winnerLabel.text = "DRAW"
                }
                
            }
        
            ButtonP1Text.isEnabled = true
            ButtonP2Text.isEnabled = true
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
}

