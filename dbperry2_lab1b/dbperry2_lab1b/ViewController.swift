//
//  ViewController.swift
//  dbperry2_lab1b
//
//  Created by Denise on 8/28/17.
//  Copyright © 2017 Denise. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hLabel: UILabel!
    @IBOutlet weak var wLabel: UILabel!
    @IBOutlet weak var bmiInt: UILabel!
    @IBOutlet weak var BMIString: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hSlider(_ sender: Any) {
        let hVal = self.hSlider.value
        hLabel.text = String(self.hSlider.value)
    }
    
    
    @IBAction func wSlider(_ sender: Any) {
        let wVal = self.wSlider.value
        wLabel.text = String(self.wSlider.value)
    }

    func calcBMI(
        
        let hValFloat = Float(self.hLabel.text)
        let wValFloat = Float(self.wLabel.text)
        
        
        let bmiVal = (wValFloat * 703) / (hValFloat * hValFloat)
        
        switch bmiVal
        {
        case 0..<18:
            BMIString.text = "You are Underweight."
            BMIString.textColor = UIColor(red: 0.0, green: 0.0, blue: 0.9, alpha: 1.0)
        case 18..<25:
            BMIString.text = "You are Normal."
            BMIString.textColor = UIColor(red: 0.0, green: 0.5, blue: 0.0, alpha: 1.0)
        case 25..<30:
            BMIString.text = "You are Pre-Obese."
            BMIString.textColor = UIColor(red: 0.7, green: 0.0, blue: 0.7, alpha: 1.0)
        case 30..<9999:
            BMIString.text = "You are Obese."
            BMIString.textColor = UIColor(red: 0.9, green: 0.0, blue: 0.0, alpha: 1.0)
        default:
            BMIString.text = "Invalid Number"
            BMIString.textColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        }
        
        
        bmiInt.text = String(bmiVal)

    }

}

