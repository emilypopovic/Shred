//
//  ViewController.swift
//  Shred1
//
//  Created by Emily Popovic on 2018-01-04.
//  Copyright © 2018 Emily Popovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //variables for each of the view objects
    @IBOutlet weak var label: UILabel!
    
    //create rails arrays
    var railsEasy = ["50/50", "Nose Press", "Tail Press", "Back 180 out", "Front 180 out", "Back Boardslide"]
    
    var railsHard = ["Backside 270 On", "Frontside 270 On", "Frontside 270 Off", "Backside 270 Off", "Tamedog off Box", "360 On"]
    
    //create jumps arrays
    var jumpsEasy = ["Straight air", "Frontside Shifty", "Backside Shifty", "Indy Grab", "Nose Grab", "Tail Grab"]
    var jumpsHard = ["Backside 360", "Frotnside 360", "Switch Frontside 180", "Switch Backside 180", "Tamedog", "Backfip"]
    
    
    //set initial variables
    var difficulty = 0
    var tricks = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    //difficulty buttons
    @IBAction func easyButton(_ sender: Any) {
        
        difficulty = 0
    }
    
    
    @IBAction func hardButton(_ sender: Any) {

        difficulty = 1

    }
    
    
    //trick buttons
    @IBAction func railsButton(_ sender: Any) {
        
        tricks = 0
    }
    
    
    @IBAction func jumpsButton(_ sender: Any) {
        
        tricks = 1
    }
    
    
    //roll button action function
    @IBAction func buttonTapped(_ sender: Any) {
        
        //get a random numer
        let number = Int(arc4random_uniform(5)+1)
        
        var move = ""
        
        //get the move
        if difficulty == 0 && tricks == 0{
            move = railsEasy[number]
        }
        else if difficulty == 1 && tricks == 0{
            move = railsHard[number]
        }
        else if difficulty == 0 && tricks == 1{
            move = jumpsEasy[number]
        }
        else if difficulty == 1 && tricks == 1{
            move = jumpsHard[number]
        }
        
        label.text = "\(move)"
        
    }
    

}

