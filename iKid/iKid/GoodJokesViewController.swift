//
//  GoodJokesViewController.swift
//  iKid
//
//  Created by Harshitha Akkaraju on 2/4/18.
//  Copyright © 2018 Harshitha Akkaraju. All rights reserved.
//

import UIKit

class GoodJokesViewController: UIViewController {

    var list = [String]()
    var randomNumber = -1
    
    @IBOutlet weak var output: UILabel!
    
    var flipped : Bool = false
    
    func makeJokesList() {
        list.append("Why should you never trust atoms?-They make up everything.")
        list.append("Why did the bear dissolve in water?-It was polar.")
        list.append("Lost an electron..-You really have to keep an ion them.")
        list.append("I am not lazy, I am..-..overflowing with potential energy.")
    }
    
    func displayJoke() {
        let joke = list[randomNumber].split(separator: "-")
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
    
    
    @IBAction func flip(_ sender: UIButton) {
        UIView.transition(with: self.view, duration: 0.325, options: UIViewAnimationOptions.transitionFlipFromRight, animations: {}, completion: { (finished: Bool) -> () in })
        if !flipped {
            flipped = true
        } else {
            flipped = false
        }
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
