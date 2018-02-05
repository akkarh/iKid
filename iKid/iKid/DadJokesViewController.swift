//
//  DadJokesViewController.swift
//  iKid
//
//  Created by Harshitha Akkaraju on 2/4/18.
//  Copyright © 2018 Harshitha Akkaraju. All rights reserved.
//

import UIKit

class DadJokesViewController: UIViewController {
    
    var list = [String]()
    
    @IBOutlet weak var output: UILabel!
    
    func makeJokesList() {
        list.append("I would tell a joke about a pizza, but it's a little cheesy ;)")
        list.append("What does batman like in his drink? \n \nJust ice.")
        list.append("Guess what time the man went to the dentist? \n\nTooth-hurt-y")
        list.append("What do you call a sad cup of coffee? \n\nDepresso.")
    }

    @IBAction func newJoke(_ sender: UIButton) {
        displayJoke()
    }
    
    func displayJoke() {
        let randomNumber : Int = Int(arc4random() % 4);
        output.text = list[randomNumber]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeJokesList()
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
