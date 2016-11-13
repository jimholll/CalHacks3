//
//  IntroViewController.swift
//  health
//
//  Created by Sean Chen on 11/13/16.
//  Copyright © 2016 Unit 2. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var everyLabel: UILabel!
    @IBOutlet weak var introDude: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imagesNames = ["chillin0001", "chillin0002", "chillin0003",
                           "chillin0004",
                           "chillin0005",
                           "chillin0006",
                           "chillin0007",
                           "chillin0008",
                           "chillin0009",
                           "chillin0010",
                           "chillin0011",
                           "chillin0012"]
        var images = [UIImage]()
        
        for i in 0..<imagesNames.count {
            images.append(UIImage(named: imagesNames[i])!)
        }
        
        introDude.animationImages = images
        introDude.animationDuration = 1.0
        introDude.startAnimating()

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


}
