//
//  ViewController.swift
//  health
//
//  Created by Sean Chen on 11/12/16.
//  Copyright © 2016 Unit 2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // updating level/ initializing it
        
        if (UserDefaults.standard.value(forKey: defaultsKeys.keyLevel) == nil){
            UserDefaults.standard.set(1, forKey:defaultsKeys.keyLevel)
        }
        
        /*if let lv = UserDefaults.standard.value(forKey: "highscore") {
            // do something here when a highscore exists
            UserDefaults.set(lv + 1, forKey:defaultsKeys.keyEXP)
            
        }
        else {
            // no level exists
            
        }*/
        
        level.text = String(describing: UserDefaults.standard.value(forKey: defaultsKeys.keyLevel))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var level: UILabel!


}

struct defaultsKeys {
    static let keyLevel = "levelStringKey"
    static let keyEXP = "expStringKey"
}
