//
//  ceaserVC.swift
//  CYOAVintartas
//
//  Created by NICHOLAS VINTARTAS on 11/6/24.
//

import UIKit

class ceaserVC: UIViewController {
    
    @IBOutlet weak var incorrectLabel: UILabel!
    
    @IBOutlet weak var answerField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        incorrectLabel.isHidden = true
    }
    
    @IBAction func enterButton(_ sender: UIButton) {
        if answerField.text == "All who enter will fall, if you think you wont, you are a fool." {
            performSegue(withIdentifier: "correct", sender: nil)
        }
        else {
            incorrectLabel.isHidden = false
        }
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
