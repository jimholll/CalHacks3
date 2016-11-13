//
//  EatNotUnhealthyViewController.swift
//  health
//
//  Created by Sean Chen on 11/12/16.
//  Copyright © 2016 Unit 2. All rights reserved.
//

import UIKit

class EatNotUnhealthyViewController: UIViewController {

    @IBOutlet weak var cakeEatingDude: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imagesNames = ["nocake0001", "nocake0002", "nocake0003",
                           "nocake0004",
                           "nocake0005",
                           "nocake0006",
                           "nocake0007",
                           "nocake0008",
                           "nocake0009",
                           "nocake0010",
                           "nocake0011",
                           "nocake0012",
                           "nocake0013",
                           "nocake0014",
                           "nocake0015",
                           "nocake0016",
                           "nocake0017",
                           "nocake0018"]
        var images = [UIImage]()
        
        for i in 0..<imagesNames.count {
            images.append(UIImage(named: imagesNames[i])!)
        }
        
        cakeEatingDude.animationImages = images
        cakeEatingDude.animationDuration = 1.5
        cakeEatingDude.startAnimating()

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
            performSegue(withIdentifier: "fromEatNotUnhealthyToLevelUp", sender: nil)
        } else {
            performSegue(withIdentifier: "fromEatNotHealthyToHome", sender: nil)
        }
    }

    @IBAction func bonus(_ sender: Any) {
        gainExp(amount: 5)
        ok(Any.self)
    }
}
