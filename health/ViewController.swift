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

        level.text = "Lvl: " + String(describing: lv)
        
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
        imageNames = ["level30001", "level30002", "level30003",
                      "level30004",
                      "level30005",
                      "level30006",
                      "level30007",
                      "level30008",
                      "level30009",
                      "level30010",
                      "level30011",
                      "level30012"]
    } else if (level < 7){
        imageNames = ["level50001", "level50002", "level50003",
                      "level50004",
                      "level50005",
                      "level50006",
                      "level50007",
                      "level50008",
                      "level50009",
                      "level50010",
                      "level50011",
                      "level50012"]
    } else if (level < 10){
        imageNames = ["level100001", "level100002", "level100003",
                      "level100004",
                      "level100005",
                      "level100006",
                      "level100007",
                      "level100008",
                      "level100009",
                      "level100010",
                      "level100011",
                      "level100012"]
    } else if (level < 15){
        imageNames = ["level150001", "level150002", "level150003",
                      "level150004",
                      "level150005",
                      "level150006",
                      "level150007",
                      "level150008",
                      "level150010",
                      "level150011",
                      "level150012"]
        
    } else {
        imageNames = ["level150001", "level150002", "level150003",
                      "level150004",
                      "level150005",
                      "level150006",
                      "level150007",
                      "level150008",
                      "level150010",
                      "level150011",
                      "level150012"]
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
