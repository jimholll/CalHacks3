//
//  GymViewController.swift
//  health
//
//  Created by Sean Chen on 11/12/16.
//  Copyright © 2016 Unit 2. All rights reserved.
//

import UIKit

class GymViewController: UIViewController {
    
    @IBOutlet weak var liftingDude: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imagesNames = ["bicepcurl0001", "bicepcurl0002", "bicepcurl0003",
                           "bicepcurl0004",
                           "bicepcurl0005",
                           "bicepcurl0006",
                           "bicepcurl0007",
                           "bicepcurl0008",
                           "bicepcurl0009"]
        var images = [UIImage]()
        
        for i in 0..<imagesNames.count {
            images.append(UIImage(named: imagesNames[i])!)
        }
        
        liftingDude.animationImages = images
        liftingDude.animationDuration = 0.75
        liftingDude.startAnimating()

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
            performSegue(withIdentifier: "fromGymToLevelUp", sender: nil)
        } else {
            performSegue(withIdentifier: "fromGymToHome", sender: nil)
        }
        
    }
    
    @IBAction func bonus(_ sender: Any) {
        gainExp(amount: 5)
        ok(Any.self)
    }
    
    
}
