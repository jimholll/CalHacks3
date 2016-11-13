//
//  SettingsViewController.swift
//  health
//
//  Created by Sean Chen on 11/13/16.
//  Copyright © 2016 Unit 2. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SettingsViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        
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
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func finish(_ sender: Any) {
        UserDefaults.standard.set(text1.text, forKey:defaultsKeys.keyEx1)
        UserDefaults.standard.set(text2.text, forKey:defaultsKeys.keyEx2)
        UserDefaults.standard.set(text3.text, forKey:defaultsKeys.keyEx3)
        performSegue(withIdentifier: "fromSettingsToHome", sender: nil)
        
    }
    

}


