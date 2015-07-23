//
//  ViewController.swift
//  Adivina4iOS
//
//  Created by Alberto Pacheco on 23/07/15.
//  Copyright (c) 2015 Alberto Pacheco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var digitos = 0
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func appendDigit(sender: UIButton) {
        let digitKey = sender.currentTitle!
        if digitos == 0 {
            display.text = digitKey
        } else {
            display.text = display.text! + digitKey
        }
        digitos++
    }
}

