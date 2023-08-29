//
//  ViewController.swift
//  Piano
//
//  Created by Darshan Patel on 2023-08-25.
//

import UIKit
import AVFoundation
var player: AVAudioPlayer?

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        //Force Unwrapping as in UI the value is present
//        print(sender.titleLabel!.text!)
        let key = sender.titleLabel!.text!
        playSound(key: key)
        
    }
    
    func playSound(key:String) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
    
}

