//
//  ViewController.swift
//  ProjectTableView
//
//  Created by Sandil Hussain on 17/12/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var landMarkNames: [String] = []
    var landMarkImages: [UIImage] = []
    var landMarkName = ""
    var landMarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landMarkNames = []
        landMarkNames.append("Colosseum")
        landMarkNames.append("Great Wall")
        landMarkNames.append("Kremlin")
        landMarkNames.append("Stone Henge")
        landMarkNames.append("Taj Mahal")
        
        landMarkImages.append(UIImage(named: "colosseum")!)
        landMarkImages.append(UIImage(named: "greatwall")!)
        landMarkImages.append(UIImage(named: "kremlin")!)
        landMarkImages.append(UIImage(named: "stonehenge")!)
        landMarkImages.append(UIImage(named: "tajmahal")!)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        navigationItem.title = "LandMark Book"
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let landmarkName = landMarkNames[indexPath.row]
        cell.textLabel?.text = landmarkName
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarkNames.count
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            landMarkNames.remove(at: indexPath.row)
            landMarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        landMarkName = landMarkNames[indexPath.row]
        landMarkImage = landMarkImages[indexPath.row]
        
        performSegue(withIdentifier: "showDetails", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.landMarkName = landMarkName
            destinationVC.landMarkImage = landMarkImage
        }
    }
    
}

