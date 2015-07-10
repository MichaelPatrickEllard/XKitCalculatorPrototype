//
//  File.swift
//
//  Created by Rescue Mission Software on 7/9/15.
//
//

import AppKit

typealias XViewController = NSViewController

typealias XButton = NSButton

typealias XLabel = NSTextField

extension XLabel
{
    var labelText: String {
        get {return self.stringValue}
        set {self.stringValue = newValue}
    }
}

extension XButton
{
    var buttonTitle: String {
        return self.title
    }
}