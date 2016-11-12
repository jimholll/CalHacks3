//
//  ExerciseViewController.swift
//  health
//
//  Created by Sean Chen on 11/12/16.
//  Copyright © 2016 Unit 2. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    
    @IBAction func gymmed(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        
        let currentEXP = defaults.integer(forKey: defaultsKeys.keyEXP)
        defaults.set(currentEXP + 1, forKey:defaultsKeys.keyEXP)
        
        print(currentEXP)
        
        defaults.synchronize()
        //update levels too!
        performSegue(withIdentifier: "fromExerciseToHome", sender: nil)
    }

}
