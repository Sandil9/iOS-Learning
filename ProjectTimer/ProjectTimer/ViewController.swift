//
//  ViewController.swift
//  ProjectTimer
//
//  Created by Sandil Hussain on 15/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTime: UILabel!
    var counter = 30
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
    }
    
    @objc func countDown() {
        
        if counter == 0 {
            self.timer.invalidate()
            lblTime.text = "Time's Up!"
        }else{
            counter -= 1
            lblTime.text = "Time: \(counter)"
        }
        
    }

}

