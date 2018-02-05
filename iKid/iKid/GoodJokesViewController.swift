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
    
    @IBOutlet weak var output: UILabel!
    
    func makeJokesList() {
        list.append("Why should you never trust atoms? \n\nThey make up everything.")
        list.append("Why did the bear dissolve in water \n\nIt was polar.")
        list.append("Lost an electron. You really have to keep an ion them.")
        list.append("I am not lazy, I am overflowing with potential energy.")
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
