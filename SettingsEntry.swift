//
//  SettingsEntry.swift
//  Park
//
//  Created by Matt O'Connell on 4/1/17.
//  Copyright © 2017 Matt O'Connell. All rights reserved.
//

import Foundation

class SettingsEntry
{
    let title: String
    let content: String
    let date: Date
    let dateFormatter = DateFormatter()
    
    var description:String {
        return "\(self.title) - \(dateFormatter.string(from:self.date))"
    }
    
    init(title:String, content:String) {
        self.title = title
        self.content = content
        self.date = Date()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
    }
}
