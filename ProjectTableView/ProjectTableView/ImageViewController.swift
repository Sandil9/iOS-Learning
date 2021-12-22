//
//  ImageViewController.swift
//  ProjectTableView
//
//  Created by Sandil Hussain on 17/12/2021.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    var landMarkName = ""
    var landMarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblName.text = landMarkName
        imageView.image = landMarkImage
        
        navigationItem.title = "LandMark Details"
    }

}
