//
//  ViewController.swift
//  ProjectGestureRecognizer
//
//  Created by Sandil Hussain on 15/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblImageName: UILabel!
    
    var isFirstImage = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changeImage() {
        
        if isFirstImage == true {
            imageView.image = UIImage(named: "temp_image-2")
            lblImageName.text = "temp_image-2"
            
            isFirstImage = false
        } else {
            
            imageView.image = UIImage(named: "temp_image")
            lblImageName.text = "temp_image"
            
            isFirstImage = true
        }
        
    }
    
    @IBAction func btnChangeImageTapped(_ sender: Any) {
        imageView.image = UIImage(named: "temp_image-2")
        lblImageName.text = "temp_image-2"
    }
}

