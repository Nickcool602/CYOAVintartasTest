//
//  fightVC.swift
//  CYOAVintartas
//
//  Created by NICHOLAS VINTARTAS on 11/6/24.
//

import UIKit

class fightVC: UIViewController {
    
    var number = 0
    var result = false
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var winOutlet: UIButton!
    
    @IBOutlet weak var loseOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        winOutlet.isHidden = true
        loseOutlet.isHidden = false
        super.viewWillAppear(animated)
        number = Int.random(in: 0...1)
        if number == 1 {
            result = true
        }
        else if number == 0 {
            result = false
        }
        if result == true {
            textLabel.text = "After a long fight, the creature falls to the ground. It twitches a few times before going completely silent. It doesn't bleed. It's entire body seems to be made of one, solid material."
            winOutlet.isHidden = false
            loseOutlet.isHidden = true
        }
        else if result == false {
            textLabel.text = "You pull out your sword, but not fast enough. The creature stabs you with one of its many legs, and you fall to the ground. As your vision fades, you can feel the cretaure dragging oyu back down the hallway, and just as you pass out you feel the sensation of falling."
            loseOutlet.isHidden = false
            winOutlet.isHidden = true
        }
    }
    
    @IBAction func continueWin(_ sender: UIButton) {
        
    }
    
    @IBAction func continueLose(_ sender: UIButton) {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
