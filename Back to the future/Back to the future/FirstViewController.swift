//
//  FirstViewController.swift
//  Back to the future
//
//  Created by Pranav Garg on 25/09/20.
//  Copyright © 2020 Pranav Garg. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let year = Utilities().GetCurrentYear()
        
        label1.text = Utilities().GetLetterAtIndex(str: year, location: 0)
        label2.text = Utilities().GetLetterAtIndex(str: year, location: 1)
        label3.text = Utilities().GetLetterAtIndex(str: year, location: 2)
        label4.text = Utilities().GetLetterAtIndex(str: year, location: 3)
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)
        Tick()
    }
    
    @objc func Tick () {
        
        timeLabel.text = Utilities().GetCurrentTime()
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseOut, animations: {
            self.view.alpha = 0.5
        }) { (true) in
            self.view.alpha = 1.0
        }
        
    }


}

