//
//  ViewController.swift
//  dbperry2_lab1
//
//  Created by dbperry2 on 8/28/17.
//  Copyright © 2017 dbperry2. All rights reserved.
//  https://github.com/dbperry17/MacLab1.git
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hBox: UITextField!
    
    @IBOutlet weak var wBox: UITextField!

    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func bmiButton(_ sender: UIButton) {
        
        if Int(self.hBox.text!) != nil && Int(self.wBox.text!) != nil
        {
            let hVal = Int(self.hBox.text!)!
            let wVal = Int(self.wBox.text!)!
            
            
            let bmiVal = Float((Float(wVal) * 703) / (Float(hVal) * Float(hVal)))
            
            switch bmiVal
            {
            }

            
            bmiLabel.text = String(bmiVal)
        }
        else
        {
            print("Missing height and/or weight")
        }
    
    }

}

