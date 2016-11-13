//
//  ViewController.swift
//  health
//
//  Created by Sean Chen on 11/12/16.
//  Copyright © 2016 Unit 2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var whiteBar: UIImageView!
    @IBOutlet weak var greenBar: UIImageView!
    @IBOutlet weak var homeScreenDude: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // updating level/ initializing it
        if (UserDefaults.standard.value(forKey: defaultsKeys.keyLevel) == nil){
            UserDefaults.standard.set(1, forKey:defaultsKeys.keyLevel)
        }
        
        let lv = UserDefaults.standard.integer(forKey: defaultsKeys.keyLevel)
        let exp = UserDefaults.standard.integer(forKey: defaultsKeys.keyEXP)

        level.text = "Lv: " + String(describing: lv)
        
        //update the exp bar
        let percentEmpty = 1 - (Float(exp)/Float(25 * lv))
        NSLayoutConstraint(item: whiteBar, attribute: .width, relatedBy: .equal, toItem: greenBar, attribute:.width, multiplier: CGFloat(percentEmpty), constant:-6.0).isActive = true
        NSLayoutConstraint(item: whiteBar, attribute: .height, relatedBy: .equal, toItem: greenBar, attribute:.height, multiplier: 1.0, constant:-6.0).isActive = true
        NSLayoutConstraint(item: whiteBar, attribute: .trailing, relatedBy: .equal, toItem: greenBar, attribute:.trailing, multiplier: 1.0, constant:-3.0).isActive = true
        
        
        homeScreenDude.animationImages = findImages(level: lv)
        homeScreenDude.animationDuration = 0.75
        homeScreenDude.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

var justLeveled = false

struct defaultsKeys {
    static let keyLevel = "levelStringKey"
    static let keyEXP = "expStringKey"
}

func findImages(level: Int) -> Array<UIImage>{
    var imageNames = [String]()
    
    if (level < 3){
        imageNames = ["chillin0001", "chillin0002", "chillin0003",
                      "chillin0004",
                      "chillin0005",
                      "chillin0006",
                      "chillin0007",
                      "chillin0008",
                      "chillin0010",
                      "chillin0011",
                      "chillin0012"]
    } else if (level < 5){
        
    } else if (level < 7){
        
    } else if (level < 10){
        
    } else if (level < 15){
        
    } else {
        
    }
    
    var images = [UIImage]()
    
    for i in 0..<imageNames.count {
        images.append(UIImage(named: imageNames[i])!)
    }
    
    return images
}

func gainExp(amount: Int){
    let lv = UserDefaults.standard.integer(forKey: defaultsKeys.keyLevel)
    let exp = UserDefaults.standard.integer(forKey: defaultsKeys.keyEXP)
    if(exp + amount >= lv * 25){
        UserDefaults.standard.set((exp+amount) - (lv * 25), forKey: defaultsKeys.keyEXP)
        UserDefaults.standard.set(lv + 1, forKey:defaultsKeys.keyLevel)
        justLeveled = true
    } else {
    UserDefaults.standard.set(exp + amount, forKey:defaultsKeys.keyEXP)
    }
    UserDefaults.standard.synchronize()
    print("level: ", UserDefaults.standard.integer(forKey: defaultsKeys.keyLevel))
    print("exp: ", UserDefaults.standard.integer(forKey: defaultsKeys.keyEXP))
}
