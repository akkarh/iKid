//
//  PunsViewController.swift
//  iKid
//
//  Created by Harshitha Akkaraju on 2/4/18.
//  Copyright © 2018 Harshitha Akkaraju. All rights reserved.
//

import UIKit

class PunsViewController: UIViewController {
    
    @IBOutlet weak var output: UILabel!
    
    var list = [String]()
    var randomNumber = -1
    var flipped : Bool = false
    
    func makeJokesList() {
        list.append("If you spend your day in a well...\n..can you say your day was well spent?")
        list.append("What do you call an alligator in a vest?\nAn Investigator")
        list.append("Why did the banana go to the doctor?\nIt wasn't peeling well")
        list.append("I am a social vegan...\nI avoid meet.")
    }
    
    func displayJoke() {
        let joke = list[randomNumber].split(separator: "\n")
        if (flipped) {
            output.text = String(joke[1])
        } else {
            output.text = String(joke[0])
        }
    }
    
    @IBAction func newJoke(_ sender: Any) {
        flipped = false
        randomNumber = Int(arc4random() % UInt32(list.count));
        displayJoke()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeJokesList()
        randomNumber = Int(arc4random() % UInt32(list.count));
        displayJoke()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func flip(_ sender: UIButton) {
        UIView.transition(with: self.view, duration: 0.325, options: UIViewAnimationOptions.transitionFlipFromRight, animations: {}, completion: { (finished: Bool) -> () in })
        if !flipped {
            flipped = true
        } else {
            flipped = false
        }
        displayJoke()
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
