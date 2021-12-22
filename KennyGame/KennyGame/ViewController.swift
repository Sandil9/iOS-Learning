//
//  ViewController.swift
//  KennyGame
//
//  Created by Sandil Hussain on 15/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var lblHighScore: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var imageView6: UIImageView!
    @IBOutlet weak var imageView7: UIImageView!
    @IBOutlet weak var imageView8: UIImageView!
    @IBOutlet weak var imageView9: UIImageView!
    
    var scoreCount = 0
    var highScoreCount = 0
    var timeCounter = 20
    var timer = Timer()
    var hideTimer = Timer()
    var imagesArray = [UIImageView()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let gestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let gestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let gestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let gestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let gestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let gestureRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let gestureRecognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let gestureRecognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let gestureRecognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        imageView1.isUserInteractionEnabled = true
        imageView2.isUserInteractionEnabled = true
        imageView3.isUserInteractionEnabled = true
        imageView4.isUserInteractionEnabled = true
        imageView5.isUserInteractionEnabled = true
        imageView6.isUserInteractionEnabled = true
        imageView7.isUserInteractionEnabled = true
        imageView8.isUserInteractionEnabled = true
        imageView9.isUserInteractionEnabled = true
        
        imageView1.addGestureRecognizer(gestureRecognizer1)
        imageView2.addGestureRecognizer(gestureRecognizer2)
        imageView3.addGestureRecognizer(gestureRecognizer3)
        imageView4.addGestureRecognizer(gestureRecognizer4)
        imageView5.addGestureRecognizer(gestureRecognizer5)
        imageView6.addGestureRecognizer(gestureRecognizer6)
        imageView7.addGestureRecognizer(gestureRecognizer7)
        imageView8.addGestureRecognizer(gestureRecognizer8)
        imageView9.addGestureRecognizer(gestureRecognizer9)
        
        imagesArray = [imageView1, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9]
        
        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideImages), userInfo: nil, repeats: true)
        
        hideImages()
        
        let highScore = UserDefaults.standard.value(forKey: "highScore")
        if let newScore = highScore {
            highScoreCount = newScore as! Int
        }
        if highScoreCount > 0 {
            lblHighScore.text = "High Score: \(highScoreCount)"
        }
    }
    
    @objc func hideImages() {
        for imageView in imagesArray {
            imageView.isHidden = true
        }
        let random = Int(arc4random_uniform(UInt32(imagesArray.count - 1)))
        let imageView = imagesArray[random]
        imageView.isHidden = false
    }
    
    @objc func increaseScore() {
        scoreCount += 1
        lblScore.text = "Score: \(scoreCount)"
    }
    
    @objc func countDown() {
        
        timeCounter -= 1
        lblTime.text = "Time: \(timeCounter)"
        
        if timeCounter == 0 {
            self.timer.invalidate()
            self.hideTimer.invalidate()
            lblTime.text = "Time's Up!"
            
            if highScoreCount < scoreCount {
                highScoreCount = scoreCount
                lblHighScore.text = "High Score: \(highScoreCount)"
                
                UserDefaults.standard.setValue(highScoreCount, forKey: "highScore")
            }
            
            let alert = UIAlertController(title: "Alert", message: "Do you want to play again?", preferredStyle: UIAlertController.Style.alert)
            
            let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: nil)
            let replayAction = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { (UIAlertAction) in
                
                
                self.timeCounter = 30
                self.scoreCount = 0
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.hideImages), userInfo: nil, repeats: true)
                
                self.lblTime.text = "Time: \(self.timeCounter)"
                self.lblScore.text = "Score: \(self.scoreCount)"
                
            }
            
            alert.addAction(okAction)
            alert.addAction(replayAction)
            self.present(alert, animated: true, completion: nil)
        }
        
    }

}

