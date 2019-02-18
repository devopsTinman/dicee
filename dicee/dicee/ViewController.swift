//
//  ViewController.swift
//  dicee
//
//  Created by Allbee, Eamon on 2/15/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func updateDiceImages() {
        randomDiceIndex1 = getRandomDice()
        randomDiceIndex2 = getRandomDice()
        
        diceImageView1.image = getImage(index: randomDiceIndex1)
        diceImageView2.image = getImage(index: randomDiceIndex2)
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func getImage(index: Int) -> UIImage {
        return UIImage(named: diceArray[index])!
    }
    
    func getRandomDice() -> Int {
        return Int.random(in: 0 ... 5)
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

