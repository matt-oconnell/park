//
//  SettingsTableViewController.swift
//  Park
//
//  Created by Matt O'Connell on 4/1/17.
//  Copyright © 2017 Matt O'Connell. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    var settingsData:[SettingsEntry] = [SettingsEntry]()

    override func viewDidLoad() {
        super.viewDidLoad()
        settingsData.append(SettingsEntry(title: "HI", content: "Sup"))
        settingsData.append(SettingsEntry(title: "HI", content: "Sup"))
        settingsData.append(SettingsEntry(title: "HI", content: "Sup"))
        settingsData.append(SettingsEntry(title: "HI", content: "Sup"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath)

        cell.textLabel?.text = settingsData[indexPath.row].description

        return cell
    }

}
