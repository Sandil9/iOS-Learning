//
//  ViewController.swift
//  ProjectLayOut
//
//  Created by Sandil Hussain on 13/12/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let screenWidth = view.frame.size.width
        let screenHeight = view.frame.size.height
        
        let myLabel = UILabel()
        myLabel.text = "This is my label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: screenWidth * 0.5 - 75, y: screenHeight * 0.5 - 50, width: 150, height: 100)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: .normal)
        myButton.frame = CGRect(x: 120, y: 130, width: 50, height: 60)
        myButton.addTarget(self, action: nil, for: .touchUpInside)
        view.addSubview(myButton)
        
        
    }
    

}

