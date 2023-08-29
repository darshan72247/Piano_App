//
//  ViewController.swift
//  Piano
//
//  Created by Darshan Patel on 2023-08-25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        //Force Unwrapping as in UI the value is present
        print(sender.titleLabel!.text!)
    }
}

