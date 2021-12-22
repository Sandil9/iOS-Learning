//
//  SecondViewController.swift
//  SegueProject
//
//  Created by Sandil Hussain on 14/12/2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblName: UILabel!
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblName.text = myName
    }

}
