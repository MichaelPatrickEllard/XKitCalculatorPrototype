//
//  ViewController.swift
//  ICiOS
//
//  Created by Rescue Mission Software on 5/11/15.
//
//

//import UIKit

class ViewController: XViewController {
    
    var operation: String?
    var storedRegister: Int?
    
    @IBOutlet weak var displayPanel: UILabel!
    
    @IBAction func clearPressed(sender: XButton) {
        
        displayPanel.text = ""
    }
    
    @IBAction func changeSign(sender: XButton) {
        
        let possibleInt = displayPanel.text!.toInt()
        
        if let actualInt = possibleInt {
            
            displayPanel.text = "\(-1 * actualInt)"
        }
    }
    
    @IBAction func operationPressed (sender: XButton) {
        
        operation = sender.titleLabel!.text!
        
        storedRegister = displayPanel.text!.toInt()
        
        displayPanel.text = ""
    }
    
    @IBAction func equalsPressed(sender: XButton) {
        
        let displayRegister: Int? = displayPanel.text!.toInt()
        
        if (storedRegister != nil && displayRegister != nil) {
            
            var result: String
            
            switch operation! {
                
            case "+":
                result = add(storedRegister!, displayRegister!)
            case "-":
                result = subtract(storedRegister!, displayRegister!)
            case "*":
                result = multiply(storedRegister!, displayRegister!)
            case "/":
                result = divide(storedRegister!, displayRegister!)
            case "%":
                result = remainder(storedRegister!, displayRegister!)
            default:
                result = "I don't recognize '\(operation)'"
            }
            
            displayPanel.text = result
        }
    }
    
    @IBAction func numberPressed(sender: XButton) {
        
        displayPanel.text = displayPanel.text! + sender.titleLabel!.text!
    }
}
