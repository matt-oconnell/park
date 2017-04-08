//
//  MyFileManager.swift
//  Park
//
//  Created by Matt O'Connell on 4/8/17.
//  Copyright © 2017 Matt O'Connell. All rights reserved.
//

import Foundation


// get documents directory
let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!

//let todoDataUrl = DocumentsDirectory.appendPathComponent("data.json")

// get file url
func fileUrl(filename:String) -> URL {
    return DocumentsDirectory.appendingPathComponent(filename)
}

func fileExists(url:URL) -> Bool {
    return FileManager().fileExists(atPath: url.path)
}

//func writeToFile(data) {
//    NSKeyedArchiver.
//}
