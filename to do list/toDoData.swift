//
//  toDoData.swift
//  to do list
//
//  Created by Lamar Greene on 8/5/16.
//  Copyright © 2016 Lamar Greene. All rights reserved.
//

import Foundation

var toDoItems = [String]()

func saveToDoArray() {
    UserDefaults.standard.set(toDoItems, forKey: "toDoList")
}

func retrieveToDoArray() {
    if let toDoArray = UserDefaults.standard.object(forKey: "toDoList") {
        toDoItems.removeAll()
        toDoItems = toDoArray as! [String]
    }
}
