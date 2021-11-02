//
//  ViewController.swift
//  calculator
//
//  Created by User on 10/29/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var numberOne: Double? = nil
    var operation: String? = nil

    @IBAction func clearClick(_ sender: Any) {
        resultLabel.text = "0"
        
        numberOne = nil
    }
    
    @IBAction func fiveClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "5"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "5"
        }
    }
    @IBAction func fourClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "4"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "4"
        }
    }
    @IBAction func threeClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "3"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "3"
        }
    }
    @IBAction func twoClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "2"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "2"
        }
    }
    @IBAction func oneClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "1"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "1"
        }
    }
    @IBAction func sixClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "6"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "6"
        }
    }
    @IBAction func sevenClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "7"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "7"
        }
    }
    @IBAction func eightClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "8"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "8"
        }
    }
    @IBAction func nineClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "9"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "9"
        }
    }
    @IBAction func pointClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "."
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "."
        }
    }
    
    @IBAction func zeroClick(_ sender: Any) {
        if resultLabel.text != "0" {
            resultLabel.text = (resultLabel.text ?? String()) + "0"
        }
    }
    
    @IBAction func plusClick(_ sender: Any) {
        if (numberOne == nil) {
            numberOne = Double(resultLabel.text ?? "0")
            resultLabel.text = "0"
            operation = "plus"
        }
    }
    @IBAction func minusClick(_ sender: Any) {
        if (numberOne == nil) {
            numberOne = Double(resultLabel.text ?? "0")
            resultLabel.text = "0"
            operation = "minus"
        }
    }
    @IBAction func multiplyClick(_ sender: Any) {
        if (numberOne == nil) {
            numberOne = Double(resultLabel.text ?? "0")
            resultLabel.text = "0"
            operation = "multiply"
        }
    }
    @IBAction func devideClick(_ sender: Any) {
        if (numberOne == nil) {
            numberOne = Double(resultLabel.text ?? "0")
            resultLabel.text = "0"
            operation = "devide"
        }
    }
    @IBAction func percentClick(_ sender: Any) {
        if (numberOne == nil) {
            numberOne = Double(resultLabel.text ?? "0")
            resultLabel.text = "0"
            operation = "percent"
        }
    }
    @IBAction func plusminusClick(_ sender: Any) {
        if (numberOne == nil) {
            numberOne = Double(resultLabel.text ?? "0")
            resultLabel.text = "0"
            resultLabel.text = "\(numberOne ?? 0 * (-1))"
        }
    }
    @IBAction func resultClick(_ sender: Any) {

        if operation == "plus" {
            resultLabel.text = String((numberOne ?? 0) + Double(resultLabel.text ?? "0")!)
            
            numberOne = nil
        }
        else if operation == "minus" {
            resultLabel.text = String((numberOne ?? 0) - Double(resultLabel.text ?? "0")!)
            
            numberOne = nil
        }
        else if operation == "multiply" {
            resultLabel.text = String((numberOne ?? 0) * (Double(resultLabel.text ?? "0")!))
            
            numberOne = nil
        }
        else if operation == "devide" {
            resultLabel.text = String((numberOne ?? 0) / Double(resultLabel.text ?? "0")!)
            
            numberOne = nil
        }
        else if operation == "percent" {
            resultLabel.text = String((numberOne ?? 0) * (Double(resultLabel.text ?? "0")!/100))
            
            numberOne = nil
        }
    }
}

