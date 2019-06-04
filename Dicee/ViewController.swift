//
//  ViewController.swift
//  Dicee
//
//  Created by Roeeyn on 5/29/19.
//  Copyright © 2019 Roeeyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    
    let diceNames = [
        "dice1",
        "dice2",
        "dice3",
        "dice4",
        "dice5",
        "dice6",
    ];
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImages()
        
    }
    
    func updateImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceNames[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceNames[randomDiceIndex2])
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        updateImages()
        
    }
}

