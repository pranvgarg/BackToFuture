//
//  SecondViewController.swift
//  Back to the future
//
//  Created by Pranav Garg on 25/09/20.
//  Copyright © 2020 Pranav Garg. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var lab3: UILabel!
    @IBOutlet weak var lab4: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        let utils = Utilities()
        let year = utils.GetRandomYear()
        
        lab1.text = utils.GetLetterAtIndex(str: year, location: 0)
        lab2.text = utils.GetLetterAtIndex(str: year, location: 1)
        lab3.text = utils.GetLetterAtIndex(str: year, location: 2)
        lab4.text = utils.GetLetterAtIndex(str: year, location: 3)
        
        anime(duration: 0.5, delay: 0, object: lab1)
        anime(duration: 0.5, delay: 0.2, object: lab2)
        anime(duration: 0.5, delay: 0.4, object: lab3)
        anime(duration: 0.5, delay: 0.6, object: lab4)
    
        
    }
    
    func anime(duration: Double, delay: Double, object: UIView) {
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            object.center.x += self.view.bounds.width
        }) { (true) in
        }
    }
    
}

