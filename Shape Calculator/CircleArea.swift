//
//  CircleArea.swift
//  Shape Calculator
//
//  Created by Henry Goodwin on 28/06/2016.
//  Copyright © 2016 Henry Goodwin. All rights reserved.
//

import UIKit

class CircleArea: UIViewController {

    @IBOutlet var side1: UITextField!
    @IBOutlet var side2: UITextField!
    
    @IBOutlet var label: UILabel!
    
    var pi = 3.14159265359
    var total: Double!
    
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
        let s2: Double! = Double(side2.text!)
        
        if (side1.text == "") && (side2.text != "") {
            
            total = (pi * ((s2 / 2) * (s2 / 2)))
            let f = rounda(total, toNearest: 0.01)
            label.text = "\(f)"
            
            
            
        } else if (side1.text != "") && (side2.text == "") {
            
            total = (pi * (s1 * s1))
            let f = rounda(total, toNearest: 0.01)
            label.text = "\(f)"
            
        } else if (side1.text != "") && (side2.text != "") {
            
            total = (pi * (s1 * s1))
            let f = rounda(total, toNearest: 0.01)
            label.text = "\(f)"
            
        } else {
            
        }
        
        
        
        
        
        
    }

}
