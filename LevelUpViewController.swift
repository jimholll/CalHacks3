//
//  LevelUpViewController.swift
//  health
//
//  Created by Sean Chen on 11/12/16.
//  Copyright © 2016 Unit 2. All rights reserved.
//

import UIKit

class LevelUpViewController: UIViewController {
    @IBOutlet weak var levelupDude: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imagesNames = ["levelup0001", "levelup0002", "levelup0003",
                           "levelup0004",
                           "levelup0005",
                           "levelup0006",
                           "levelup0007",
                           "levelup0008",
                           "levelup0009",
                           "levelup0010", "levelup0011", "levelup0012",
                           "levelup0013",
                           "levelup0014",
                           "levelup0015",
                           "levelup0016",
                           "levelup0017",
                           "levelup0018",
                           "levelup0019",
                           "levelup0020",
                           "levelup0021", "levelup0022", "levelup0023",
                           "levelup0024",
                           "levelup0025",
                           "levelup0026",
                           "levelup0027",
                           "levelup0028",
                           "levelup0029"
        ]
        var images = [UIImage]()
        
        for i in 0..<imagesNames.count {
            images.append(UIImage(named: imagesNames[i])!)
        }
        
        levelupDude.animationImages = images
        levelupDude.animationDuration = 2.8
        levelupDude.startAnimating()

        // Do any additional setup after loading the view.
        
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.4) {
            // your code here
            self.performSegue(withIdentifier: "fromLevelUpToHome", sender: self)
        }
        
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
