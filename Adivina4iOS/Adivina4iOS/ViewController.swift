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
    var  minimo = 1
    var  maximo = 1000
    let  oculto = Int(arc4random_uniform(1000)) + 1
    
    var num: Int { // computed property
        return display.text!.toInt() ?? 0
    }
    
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

    @IBAction func enter() { // enter key: process number
        switch num {
        case let n where n < oculto:
            minimo = n
        case let n where n > oculto:
            maximo = n
        default: // win (num==oculto) or error (num=0)
            break
        }
        display.text = num==oculto ? "Ganaste!" : "Entre \(minimo) y \(maximo)"
        digitos = 0
    }
}

