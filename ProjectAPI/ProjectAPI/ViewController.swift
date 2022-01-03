//
//  ViewController.swift
//  ProjectAPI
//
//  Created by Sandil Hussain on 23/12/2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblCAD: UILabel!
    @IBOutlet weak var lblJPY: UILabel!
    @IBOutlet weak var lblGBP: UILabel!
    @IBOutlet weak var lblUSD: UILabel!
    @IBOutlet weak var lblAED: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnGetResultsTapped(_ sender: Any) {
        
        //Create a url and session
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=762e2b54c800b4153fc17af4e7210f24")
        let session = URLSession.shared
        
        //creates a task with session object that will get data from api
        let task = session.dataTask(with: url!) { (data, response, error) in
            //if there is error on getting results
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                
                alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)
            } else {
                //if data exists on service response
                if data != nil {
                    do {
                        //convert data to json object using json serialization
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String, Any>
                        
                        //We can update our UIObjects like label, buttons, etc. only on main thread.
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["rates"] as? [String: Any] {
                                if let cad = rates["CAD"] as? Double {
                                    self.lblCAD.text = "CAD: \(cad)"
                                }
                                if let jpy = rates["JPY"] as? Double {
                                    self.lblJPY.text = "JPY: \(jpy)"
                                }
                                if let gbp = rates["GBP"] as? Double {
                                    self.lblGBP.text = "GBP: \(gbp)"
                                }
                                if let usd = rates["USD"] as? Double {
                                    self.lblUSD.text = "USD: \(usd)"
                                }
                                if let aed = rates["AED"] as? Double {
                                    self.lblAED.text = "AED: \(aed)"
                                }
                                
                            }
                        }
                        
                    } catch {
                        print("Error getting json data")
                    }
                    
                }
            }
        }
        //Run task to get api response
        task.resume()
        
    }
    func postRequest() {
        let url = URL(string: "http://www.thisismylink.com/postName.co")!
        var request = URLRequest(url: url)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let parameters: [String: Any] = [
            "id": 13,
            "name": "Jack & Jill"
        ]
        let bodyData = try? JSONSerialization.data(
            withJSONObject: parameters,
            options: []
        )
        request.httpBody = bodyData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            //Here we will get our response
        }

        task.resume()
    }
    func getRequest() {
        let url = URL(string: "http://www.thisismylink.com/postName.co")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            //Here we will get our response
        }

        task.resume()
    }
}

