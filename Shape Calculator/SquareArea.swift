//
//  SquareArea.swift
//  Shape Calculator
//
//  Created by Henry Goodwin on 28/06/2016.
//  Copyright © 2016 Henry Goodwin. All rights reserved.
//

import UIKit

class SquareArea: UIViewController {

    
    @IBOutlet var side1: UITextField!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rounda(number: Double, toNearest: Double) -> Double {
        return round(number / toNearest) * toNearest
    }
    
    @IBAction func calculate(sender: AnyObject) {
        
        let s1: Double! = Double(side1.text!)
        
        if (side1.text != "") {

        let total = (s1 * 4)
        let final = rounda(total, toNearest: 0.01)
        
        label.text = "\(final)"
        }
        
    }

}
