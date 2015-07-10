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

    @IBOutlet weak var displayPanel: XLabel!
 
    @IBAction func clearPressed(sender: XButton) {
        
        displayPanel.labelText = ""
    }

    @IBAction func changeSign(sender: XButton) {
        
        let possibleInt = displayPanel.labelText.toInt()
            
        if let actualInt = possibleInt {
            
            displayPanel.labelText = "\(-1 * actualInt)"
        }
    }
    
    @IBAction func operationPressed (sender: XButton) {
        
        operation = sender.buttonTitle
        
        storedRegister = displayPanel.labelText.toInt()
        
        displayPanel.labelText = ""
    }
    
    @IBAction func equalsPressed(sender: XButton) {
        
        let displayRegister: Int? = displayPanel.labelText.toInt()
        
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
            
            displayPanel.labelText = result
        }
    }
    
    @IBAction func numberPressed(sender: XButton) {
        
        displayPanel.labelText = displayPanel.labelText + sender.buttonTitle
    }
}

