//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Enrique Mosqueda on 8/26/19.
//  Copyright © 2019 Enrique Mosqueda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var percentController: UISegmentedControl!
    @IBOutlet weak var userBill: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.15, 0.20]
        
        let bill = Double(userBill.text!) ?? 0
        let tip = (bill * tipPercent[percentController.selectedSegmentIndex])
        
        let total =  tip + bill
        
        totalLabel.text = String(format: "$%.2f", total)
        tipLabel.text = String(format: "$%.2f", tip)

    }
    

}

