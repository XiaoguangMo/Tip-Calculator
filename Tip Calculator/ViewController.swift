//
//  ViewController.swift
//  Tip Calculator
//
//  Created by XiaoguangMo on 8/15/17.
//  Copyright © 2017 XiaoguangMo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        
        let bill = Double(billField.text!) ?? 0
//        let tipPercent = Double(round(100*tipSlider.value)/100)
        let tip = bill * Double(Int(tipSlider.value * 100)) / 100
        let total = bill + tip
        
        tipPercentLabel.text = String(Int(tipSlider.value * 100)) + "%"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

