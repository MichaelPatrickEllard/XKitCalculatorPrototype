//
//  ViewController.swift
//  IntCalculatorMikeEllard
//
//  Created by Rescue Mission Software on 1/26/15.
//
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var displayPanel: NSTextField!
 

    @IBAction func numberPressed(sender: NSButton) {
        
        displayPanel.stringValue = displayPanel.stringValue + sender.title
    }
}

