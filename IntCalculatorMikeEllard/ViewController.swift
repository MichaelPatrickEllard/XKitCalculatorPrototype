//
//  ViewController.swift
//  IntCalculatorMikeEllard
//
//  Created by Rescue Mission Software on 1/26/15.
//
//

import Cocoa

class ViewController: NSViewController {
    
    var storedRegister: Int?

    @IBOutlet weak var displayPanel: NSTextField!
 
    @IBAction func clearPressed(sender: NSButton) {
        
        displayPanel.stringValue = ""
    }

    @IBAction func changeSign(sender: NSButton) {
        
        let possibleInt = displayPanel.stringValue.toInt()
            
        if let actualInt = possibleInt {
            
            displayPanel.stringValue = "\(-1 * actualInt)"
        }
    }
    
    @IBAction func operationPressed (sender: AnyObject) {
        
        storedRegister = displayPanel.stringValue.toInt()
        
        displayPanel.stringValue = ""
    }
    
    @IBAction func equalsPressed(sender: NSButton) {
        
        let displayRegister: Int? = displayPanel.stringValue.toInt()
        
        if (storedRegister != nil && displayRegister != nil) {
                
            let result = add(storedRegister!, displayRegister!)
            
            displayPanel.stringValue = result
        }
    }
    
    @IBAction func numberPressed(sender: NSButton) {
        
        displayPanel.stringValue = displayPanel.stringValue + sender.title
    }
}

