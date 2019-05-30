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
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func rollButtonPressed(_ sender: Any) {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        print(randomDiceIndex1, randomDiceIndex2)
    }
}

