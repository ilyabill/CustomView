//
//  ViewController.swift
//  CustomView
//
//  Created by ILYA BILARUS on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
        // Do any additional setup after loading the view.
    }


    @IBAction func didChecked(_ sender: CheckBox) {
        print("Checkbox \(sender.checked ? "checked" : "unchecked")")
    }
    
}

