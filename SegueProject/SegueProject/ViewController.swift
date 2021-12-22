//
//  ViewController.swift
//  SegueProject
//
//  Created by Sandil Hussain on 14/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblTitle: UILabel!
    var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear called")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear called")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisAppear called")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisAppear called")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.myName = userName
        }
    }
    
    @IBAction func btnNextTapped(_ sender: Any) {
        userName = txtName.text!
        if userName == "" {
            let alert = UIAlertController(title: "Error", message: "User not found!", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
                print("Button ok tapped")
            }
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }else{
            userName = txtName.text!
            performSegue(withIdentifier: "showSecondVC", sender: nil)
        }
    }
    
}

