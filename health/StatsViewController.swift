//
//  StatsViewController.swift
//  health
//
//  Created by Jim Hollingworth on 11/13/16.
//  Copyright © 2016 Unit 2. All rights reserved.
//

import UIKit

var bestBench: Int = 45
var bestCurl: Double = 5
var bestSquat: Int = 45


class StatsViewController: UIViewController {
    
    @IBOutlet weak var labelEx1: UILabel!
    @IBOutlet weak var labelEx2: UILabel!
    @IBOutlet weak var labelEx3: UILabel!
    
    @IBOutlet weak var bestBenchLabel: UILabel!
    @IBOutlet weak var fivePoundBenchButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var bestCurlLabel: UILabel!
    @IBOutlet weak var bestSquatLabel: UILabel!
    @IBOutlet weak var twoPoundCurlButton: UIButton!
    @IBOutlet weak var fivePoundSquatButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelEx1.text = UserDefaults.standard.string(forKey: defaultsKeys.keyEx1)
        labelEx2.text = UserDefaults.standard.string(forKey: defaultsKeys.keyEx2)
        labelEx3.text = UserDefaults.standard.string(forKey: defaultsKeys.keyEx3)
        
        
        bestBenchLabel.text = String(bestBench)
        bestCurlLabel.text = String(bestCurl)
        bestSquatLabel.text = String(bestSquat)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func twoPoundCurlButtonPressed(_ sender: AnyObject) {
        bestCurl += 2.5
        bestCurlLabel.text = String(bestCurl)
    }

    @IBAction func fivePoundSquatButtonPressed(_ sender: AnyObject) {
        bestSquat += 5
        bestSquatLabel.text = String(bestSquat)
    }

    
    @IBAction func fiveButtonpressed(_ sender: AnyObject) {
        bestBench += 5
        bestBenchLabel.text = String(bestBench)
    }

    @IBAction func resetStats(_ sender: AnyObject) {
        bestCurl = 5
        bestBench = 45
        bestSquat = 45
        bestBenchLabel.text = String(bestBench)
        bestSquatLabel.text = String(bestSquat)
        bestCurlLabel.text = String(bestCurl)
    }
    
//    @IBAction func ok(_ sender: AnyObject) {
//        if(justLeveled){
//            justLeveled = false
//            performSegue(withIdentifier: "fromStatsToLevelUp", sender: nil)
//        } else {
//            performSegue(withIdentifier: "fromGymToHome", sender: nil)
//        }
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
