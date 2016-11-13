//
//  EatHealthyViewController.swift
//  health
//
//  Created by Sean Chen on 11/12/16.
//  Copyright © 2016 Unit 2. All rights reserved.
//

import UIKit

class EatHealthyViewController: UIViewController {

    @IBOutlet weak var healthyEater: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imagesNames = ["applemunching0001", "applemunching0002", "applemunching0003",
                           "applemunching0004",
                           "applemunching0005",
                           "applemunching0006",
                           "applemunching0007",
                           "applemunching0008",
                           "applemunching0009",
                           "applemunching0010",
                           "applemunching0011",
                           "applemunching0012",
                           "applemunching0013"]
        var images = [UIImage]()
        
        for i in 0..<imagesNames.count {
            images.append(UIImage(named: imagesNames[i])!)
        }
        
        healthyEater.animationImages = images
        healthyEater.animationDuration = 1.1
        healthyEater.startAnimating()

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
            performSegue(withIdentifier: "fromEatHealthyToLevelUp", sender: nil)
        } else {
            performSegue(withIdentifier: "fromEatHealthyToHome", sender: nil)
        }
    }
    
    
    @IBAction func bonus(_ sender: Any) {
        gainExp(amount: 5)
        ok(Any.self)
    }
}
