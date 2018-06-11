//
//  ViewController.swift
//  biketrackerapp
//
//  Created by Eric Hunzeker on 6/1/18.
//  Copyright © 2018 Eric Hunzeker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mpginput: UITextField!
    @IBOutlet weak var gasinput: UITextField!
    @IBOutlet weak var milesinput: UITextField!
    @IBOutlet weak var daysinput: UITextField!
    
    @IBOutlet weak var savings: UILabel!
    
    @IBAction func calculate(_ sender: Any) {
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        
        currencyFormatter.locale = Locale.current
        
        let miles = (Double)(milesinput.text!)
        let days = (Double)(daysinput.text!)
        let mpg = (Double)(mpginput.text!)
        let gas = (Double)(gasinput.text!)
        
        let total = ((miles! * days! * 2) / mpg!) * gas!
        
        let priceString = currencyFormatter.string(from:       NSNumber(value: total))!
        
        savings.text = "you saved " + priceString + " by biking to work"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

