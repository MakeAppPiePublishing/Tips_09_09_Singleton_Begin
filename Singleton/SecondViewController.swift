//
//  SecondViewController.swift
//  Singleton
//
//  Created by Steven Lipton on 12/2/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let formatter = NumberFormatter()
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var secondLabel: UILabel!
    @IBAction func stepperChanged(_ sender: UIStepper) {
        
        secondLabel.text = formatter.string(from: NSNumber(value: sender.value))
    }
    override func viewWillAppear(_ animated: Bool) {
        
        secondLabel.text = formatter.string(from: NSNumber(value: stepper.value))
       
    }
    override func viewDidLoad() {
        formatter.numberStyle = .spellOut
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

