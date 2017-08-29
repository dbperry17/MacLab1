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
    
    @IBOutlet weak var BMIStringLabel: UILabel!
    
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
            
            switch bmiVal
            {
            case 0..<18:
                BMIStringLabel.text = "You are Underweight."
                BMIStringLabel.textColor = UIColor(red: 0.0, green: 0.0, blue: 0.9, alpha: 1.0)
            case 18..<25:
                BMIStringLabel.text = "You are Normal."
                BMIStringLabel.textColor = UIColor(red: 0.0, green: 0.5, blue: 0.0, alpha: 1.0)
            case 25..<30:
                BMIStringLabel.text = "You are Pre-Obese."
                BMIStringLabel.textColor = UIColor(red: 0.7, green: 0.0, blue: 0.7, alpha: 1.0)
            case 30..<9999:
                BMIStringLabel.text = "You are Obese."
                BMIStringLabel.textColor = UIColor(red: 0.9, green: 0.0, blue: 0.0, alpha: 1.0)
            default:
                BMIStringLabel.text = "Invalid Number"
            }

            
            bmiLabel.text = String(bmiVal)
        }
        else
        {
            print("Missing height and/or weight")
        }
    
    }

}

