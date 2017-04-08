//
//  SettingsTableViewController.swift
//  Park
//
//  Created by Matt O'Connell on 4/8/17.
//  Copyright © 2017 Matt O'Connell. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    @IBOutlet weak var switchAlerts: UISwitch!
    @IBAction func toggleTestOption(_ sender: UISwitch) {
        UserDefaults.standard.set(switchAlerts.isOn, forKey:"alertsOn")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchAlerts.isOn = UserDefaults.standard.bool(forKey: "alertsOn")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
