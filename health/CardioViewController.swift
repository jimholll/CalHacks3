//
//  CardioViewController.swift
//  health
//
//  Created by Sean Chen on 11/12/16.
//  Copyright © 2016 Unit 2. All rights reserved.
//

import UIKit

class CardioViewController: UIViewController {

    @IBOutlet weak var runningDude: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imagesNames = ["running0001", "running0002", "running0003",
                           "running0004",
                           "running0005",
                           "running0006",
                           "running0007"]
        var images = [UIImage]()
        
        for i in 0..<imagesNames.count {
            images.append(UIImage(named: imagesNames[i])!)
        }
        
        runningDude.animationImages = images
        runningDude.animationDuration = 0.5
        runningDude.startAnimating()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func ok(_ sender: Any) {
        if(justLeveled){
            justLeveled = false
            performSegue(withIdentifier: "fromCardioToLevelUp", sender: nil)
        } else {
            performSegue(withIdentifier: "fromCardioToHome", sender: nil)
        }
    }
    @IBAction func bonus(_ sender: Any) {
        gainExp(amount: 5)
        ok(Any.self)
    }

}
