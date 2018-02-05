//
//  KnockKnockViewController.swift
//  iKid
//
//  Created by Harshitha Akkaraju on 2/4/18.
//  Copyright © 2018 Harshitha Akkaraju. All rights reserved.
//

import UIKit

class KnockKnockViewController: UIViewController {
    
    let joke : [String] = ["Knock Knock", "Who's there?", "Harry", "Harry who?", "Harry up and answer the door"]
    var flipNum : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        output.text = joke[0]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var output: UILabel!
    
    @IBAction func flipPressed(_ sender: UIButton) {
        if (flipNum == 4) {
            flipNum = -1
        }
        flipNum = flipNum + 1
        displayOutput()
    }
    
    func displayOutput() {
        UIView.transition(with: self.view, duration: 0.325, options: UIViewAnimationOptions.transitionFlipFromRight, animations: {}, completion: { (finished: Bool) -> () in })
        output.text = joke[flipNum]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
