//
//  ViewController.swift
//  NinjaGold
//
//  Created by Dustin Lee on 11/30/16.
//  Copyright © 2016 Dustin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var daScore: UILabel!
    @IBOutlet weak var daFarm: UILabel!
    @IBOutlet weak var daCave: UILabel!
    @IBOutlet weak var daHouse: UILabel!
    @IBOutlet weak var daCasino: UILabel!

    
    var totalscore = 0
    
    @IBAction func moneyButtonPressed(_ sender: UIButton) {
        print(sender.tag)
        if sender.tag == 0 {
            daFarm.isHidden = false
            let farmGains = arc4random_uniform(11)+10
            let farmStringnum = String(farmGains)
            let farmIntnum = Int(farmGains)
            totalscore += farmIntnum
            daFarm.text = "You earned \(farmStringnum) Gold"
            self.daScore.text = String(totalscore)
        }
        else if sender.tag == 1 {
            daCave.isHidden = false
            let caveGains = arc4random_uniform(6)+5
            let caveStringnum = String(caveGains)
            let caveIntnum = Int(caveGains)
            totalscore += caveIntnum
            daCave.text = "You earned \(caveStringnum) Gold"
            self.daScore.text = String(totalscore)
        }
        else if sender.tag == 2 {
            daHouse.isHidden = false
            let houseGains = arc4random_uniform(3)+3
            let houseStringnum = String(houseGains)
            let houseIntnum = Int(houseGains)
            totalscore += houseIntnum
            daHouse.text = "You earned \(houseStringnum) Gold"
            self.daScore.text = String(totalscore)
        }
        else if sender.tag == 3 {
            daCasino.isHidden = false
            let casinoLuck = Int(arc4random_uniform(101))-50
            totalscore += Int(casinoLuck)
            if Int(casinoLuck) < 0 {
                daCasino.text = "You lost \(String(casinoLuck)) Gold"
                daScore.text = String(totalscore)
            }else{
                daCasino.text = "You earned \(String(casinoLuck)) Gold"
                daScore.text = String(totalscore)
            }
        }
    }


    @IBAction func resetButtonClicked(_ sender: UIButton) {
        totalscore = 0
        daScore.text = String(totalscore)
        daFarm.text = ""
        daCave.text = ""
        daHouse.text = ""
        daCasino.text = ""
        
    }
       override func viewDidLoad() {
        super.viewDidLoad()
        daFarm.isHidden = true
        daCave.isHidden = true
        daHouse.isHidden = true
        daCasino.isHidden = true
        daScore.text = String(totalscore)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

