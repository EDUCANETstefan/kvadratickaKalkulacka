//
//  ViewController.swift
//  QuadradicEquationCal
//
//  Created by Stefan Rajilić on 05/05/2020.
//  Copyright © 2020 Stefan Rajilić. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var numberA: UITextField!
    @IBOutlet var numberB: UITextField!
    @IBOutlet var numberC: UITextField!
    @IBOutlet var clearBtn: UIButton!
    @IBOutlet var processBtn: UIButton!
    @IBOutlet var result: UILabel!
    @IBOutlet var result2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func clearBtnAction(_ sender: Any) {
        numberA.text = ""
        numberB.text = ""
        numberC.text = ""
        result.text = ""
        result2.text = ""
    }
    
    
    @IBAction func processBtnAction(_ sender: Any) {
        
        let delta: Double
        let x1: Double
        let x2: Double
        
        let numA: Float = (Float)(numberA.text!)!
        let numB: Float = (Float)(numberB.text!)!
        let numC: Float = (Float)(numberC.text!)!
        
        delta = Double(numB * numB - 4 * numA * numC)
        
        if(delta < 0) {
            result.text = "The equation has no result"
            result2.text = "The equation has no result"
        }
        
        let deltaF: Float = (Float)(delta)
        
        x1 = Double( (-numB + deltaF.squareRoot()) / 2 * numA)
        
        x2 = Double( (-numB - deltaF.squareRoot()) / 2 * numA)
        
        print(deltaF)
        
        let x1String: String = String(x1)
        let x2String: String = String(x2)
        
        
        result.text = x1String
        result2.text = x2String
    }
    
}

