//
//  ViewController.swift
//  tips
//
//  Created by Amir Mesguich on 10/11/15.
//  Copyright © 2015 FB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!

    @IBOutlet weak var instructionLabel: UILabel!
    
    @IBOutlet weak var tipRoundedLabel: UILabel!
    
    @IBOutlet weak var totalRoundedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        tipRoundedLabel.text = "$0.00"
        totalRoundedLabel.text = "$0"
        
        billField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(
        sender: AnyObject) {
        var tipPercentages = [0.15, 0.17, 0.20]
            
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
            
        let billAmount = NSString(string: billField.text!).doubleValue
            
        let tip = billAmount * tipPercentage
            
        let total = billAmount + tip
        
        let totalRound = (round(total))
            
        let tipRound = totalRound - billAmount
            
        if billAmount != 0 {instructionLabel.text = ""}
            
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
            
        tipRoundedLabel.text = "$\(tipRound)"
        totalRoundedLabel.text = "$\(totalRound)"
            
            
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
            
        tipRoundedLabel.text = String(format: "$%.2f", tipRound)
        totalRoundedLabel.text = String(format: "$%.0f", totalRound)
            
    }

   }
