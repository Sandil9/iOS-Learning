//
//  ViewController.swift
//  BirthdayProject
//
//  Created by Sandil Hussain on 14/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtDOB: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDOB: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myName = UserDefaults.standard.value(forKey: "name")
        let myDOB = UserDefaults.standard.value(forKey: "birthday")
        
        if let newName = myName {
            lblName.text! = newName as! String
        }
        if let newDOB = myDOB {
            lblDOB.text! = newDOB as! String
        }
    }

    @IBAction func btnSaveTapped(_ sender: Any) {
        let myName = txtName.text!
        let myDOB = txtDOB.text!
        
        UserDefaults.standard.setValue(myName, forKey: "name")
        UserDefaults.standard.setValue(myDOB, forKey: "birthday")
        
        lblName.text = "Name: \(txtName.text!)"
        lblDOB.text = "Birthday: \(txtDOB.text!)"
        
    }
    
    @IBAction func btnDeleteTapped(_ sender: Any) {
        
        UserDefaults.standard.removeObject(forKey: "name")
        UserDefaults.standard.removeObject(forKey: "birthday")
        
    }
}

