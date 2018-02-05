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
    
    func makeJokesList() {
        list.append("If you spend your day in a well, can you say your day was well spent?")
        list.append("What do you call an alligator in a vest? \n \nAn Investigator")
        list.append("Why did the banana go to the doctor? \n \nIt wasn't peeling well")
        list.append("I am a social vegan. \n \nI avoid meet.")
    }
    
    func displayJoke() {
        let randomNumber : Int = Int(arc4random() % 4);
        output.text = list[randomNumber]
    }
    
    @IBAction func newJoke(_ sender: Any) {
        displayJoke()
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
