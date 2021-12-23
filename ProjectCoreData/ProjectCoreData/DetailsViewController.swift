//
//  DetailsViewController.swift
//  ProjectCoreData
//
//  Created by Sandil Hussain on 20/12/2021.
//

import UIKit
import CoreData

class DetailsViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imgPainting: UIImageView!
    @IBOutlet weak var txtPaintingName: UITextField!
    @IBOutlet weak var txtArtistName: UITextField!
    @IBOutlet weak var txtPaintingYear: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    
    var selectedName = ""
    var selectedID: UUID?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if selectedName != "" {
            
            btnSave.isHidden = true
            
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Paintings")
            let idString = selectedID?.uuidString
            fetchRequest.predicate = NSPredicate(format: "id = %@", idString!)
            fetchRequest.returnsObjectsAsFaults = false
            
            do {
                let results = try context.fetch(fetchRequest)
                for result in results as! [NSManagedObject] {
                    if let name = result.value(forKey: "name") as? String {
                        txtPaintingName.text = name
                    }
                    if let artist = result.value(forKey: "artist") as? String {
                        txtArtistName.text = artist
                    }
                    if let year = result.value(forKey: "year") as? Int {
                        txtPaintingYear.text = String(year)
                    }
                    if let imageData = result.value(forKey: "image") as? Data {
                        let image = UIImage(data: imageData)
                        imgPainting.image = image
                    }
                }
            } catch {
                print("Error getting record")
            }
            
            
        } else {
            txtPaintingName.text = ""
            txtArtistName.text = ""
            txtPaintingYear.text = ""
        }
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyBoard))
        view.addGestureRecognizer(gestureRecognizer)
        
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageClicked))
        imgPainting.isUserInteractionEnabled = true
        imgPainting.addGestureRecognizer(imageTapRecognizer)
        
    }
    
    @objc func hideKeyBoard() {
        view.endEditing(true)
    }
    @objc func imageClicked() {
        
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        self.present(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        imgPainting.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnSaveTapped(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let paintings = NSEntityDescription.insertNewObject(forEntityName: "Paintings", into: context)
        
        //Attributes
        paintings.setValue(txtPaintingName.text, forKey: "name")
        paintings.setValue(txtArtistName.text, forKey: "artist")
        
        if let year = Int(txtPaintingYear.text!) {
            paintings.setValue(year, forKey: "year")
        }
        let data = imgPainting.image?.jpegData(compressionQuality: 0.5)
        paintings.setValue(data, forKey: "image")
        
        let id = UUID()
        paintings.setValue(id, forKey: "id")
        
        do {
            try context.save()
            print("Success")
        } catch {
            print("Save Error")
        }
        
        NotificationCenter.default.post(Notification.init(name: Notification.Name("reloadData")))
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
