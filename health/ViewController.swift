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
        
        let lv = UserDefaults.standard.integer(forKey: defaultsKeys.keyLevel)
        

        
        /*if let lv = UserDefaults.standard.value(forKey: "highscore") {
            // do something here when a highscore exists
            UserDefaults.set(lv + 1, forKey:defaultsKeys.keyEXP)
            
        }
        else {
            // no level exists
            
        }*/
        level.text = "Lv: " + String(describing: lv)
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

func gainExp(amount: Int){
    let lv = UserDefaults.standard.integer(forKey: defaultsKeys.keyLevel)
    let exp = UserDefaults.standard.integer(forKey: defaultsKeys.keyEXP)
    if(exp + amount >= lv * 25){
        UserDefaults.standard.set((exp+amount) - (lv * 25), forKey: defaultsKeys.keyEXP)
        UserDefaults.standard.set(lv + 1, forKey:defaultsKeys.keyLevel)
    } else {
    UserDefaults.standard.set(exp + amount, forKey:defaultsKeys.keyEXP)
    }
    print(lv)
    print(exp)
}
