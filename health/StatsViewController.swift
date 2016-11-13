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
    @IBOutlet weak var benchLabel: UILabel!
    @IBOutlet weak var bestBenchLabel: UILabel!
    @IBOutlet weak var fivePoundBenchButton: UIButton!
    
    @IBOutlet weak var bestCurlLabel: UILabel!
    @IBOutlet weak var bestSquatLabel: UILabel!
    @IBOutlet weak var twoPoundCurlButton: UIButton!
    @IBOutlet weak var fivePoundSquatButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bestBenchLabel.text = String(bestBench)
        

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
