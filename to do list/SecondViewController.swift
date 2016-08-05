//
//  SecondViewController.swift
//  to do list
//
//  Created by Lamar Greene on 8/3/16.
//  Copyright © 2016 Lamar Greene. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func addItem(_ sender: AnyObject) {
        
        if let newItem = textField.text {
        
        toDoItems.append(newItem)
        saveToDoArray()
            textField.text = ""
            textField.placeholder = "Enter next item"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        textField.placeholder = "e.g. milk, eggs, bread"
    }


}

