//
//  ParkViewController.swift
//  Park
//
//  Created by Matt O'Connell on 3/25/17.
//  Copyright © 2017 Matt O'Connell. All rights reserved.
//

import UIKit

class ParkViewController: UIViewController {
    
    var currentDay:String = ""
    
    @IBOutlet weak var currentDayLabel: UILabel!
    
    @IBAction func setDay(_ sender: UIButton) {
        if let buttonText = sender.titleLabel?.text {
            UserDefaults.standard.set(buttonText, forKey:"parkDay")
            currentDayLabel.text = buttonText
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let day = UserDefaults.standard.string(forKey:"parkDay") {
            currentDayLabel.text = day
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

