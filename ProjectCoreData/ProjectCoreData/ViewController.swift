//
//  ViewController.swift
//  ProjectCoreData
//
//  Created by Sandil Hussain on 20/12/2021.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var tableView: UITableView!
    var namesArray: [String] = []
    var idsArray: [UUID] = []
    
    var selectedName = ""
    var selectedID: UUID?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(btnAddTapped))
        
        getData()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(reloadData), name: NSNotification.Name("reloadData"), object: nil)
        self.tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedName = selectedName
            destinationVC.selectedID = selectedID
        }
    }
    @objc func reloadData() {
        getData()
    }
    @objc func btnAddTapped() {
        selectedName = ""
        performSegue(withIdentifier: "showDetailsVC", sender: nil)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = namesArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = namesArray[indexPath.row]
        selectedID = idsArray[indexPath.row]
        
        performSegue(withIdentifier: "showDetailsVC", sender: nil)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            selectedName = namesArray[indexPath.row]
            selectedID = idsArray[indexPath.row]
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Paintings")
            let idString = selectedID?.uuidString
            fetchRequest.predicate = NSPredicate(format: "id = %@", idString!)
            fetchRequest.returnsObjectsAsFaults = false
            
            do {
                let results = try context.fetch(fetchRequest)
                for result in results as! [NSManagedObject] {
                    if let id = result.value(forKey: "id") as? UUID {
                        if id == selectedID {
                            context.delete(result)
                            namesArray.remove(at: indexPath.row)
                            idsArray.remove(at: indexPath.row)
                            
                            do {
                                try context.save()
                            } catch {
                                print("Error deleting record")
                            }
                            self.tableView.reloadData()
                            break
                        }
                    }
                }
            } catch {
                print("Error")
            }
        }
    }
    func getData() {
        namesArray.removeAll()
        idsArray.removeAll()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Paintings")
        fetchRequest.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(fetchRequest)
            for result in results as! [NSManagedObject] {
                let name = result.value(forKey: "name") as? String
                print(name!)
                if let paintingName = name {
                    self.namesArray.append(paintingName)
                }
                let tempId = result.value(forKey: "id") as? UUID
                if let id = tempId {
                    self.idsArray.append(id)
                }
            }
            self.tableView.reloadData()
            
        } catch {
            print("Error in getting results")
        }
    }
    
}

