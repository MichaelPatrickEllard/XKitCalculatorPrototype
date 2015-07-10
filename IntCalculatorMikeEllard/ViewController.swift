//
//  ViewController.swift
//  IntCalculatorMikeEllard
//
//  Created by Rescue Mission Software on 1/26/15.
//
//


class ViewController: XViewController {
    
    var operation: String?
    var storedRegister: Int?

    @IBOutlet weak var displayPanel: NSTextField!
 
    @IBAction func clearPressed(sender: XButton) {
        
        displayPanel.stringValue = ""
    }

    @IBAction func changeSign(sender: XButton) {
        
        let possibleInt = displayPanel.stringValue.toInt()
            
        if let actualInt = possibleInt {
            
            displayPanel.stringValue = "\(-1 * actualInt)"
        }
    }
    
    @IBAction func operationPressed (sender: XButton) {
        
        operation = sender.title
        
        storedRegister = displayPanel.stringValue.toInt()
        
        displayPanel.stringValue = ""
    }
    
    @IBAction func equalsPressed(sender: XButton) {
        
        let displayRegister: Int? = displayPanel.stringValue.toInt()
        
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
            
            displayPanel.stringValue = result
        }
    }
    
    @IBAction func numberPressed(sender: XButton) {
        
        displayPanel.stringValue = displayPanel.stringValue + sender.title
    }
}

