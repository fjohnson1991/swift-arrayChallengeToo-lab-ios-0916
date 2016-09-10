//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    func addNameToDeliLine(name:String) -> String {
        
        var upNext: String = ""
        
        deliLine.append(name)
        
        for (index, name) in deliLine.enumerate() {
            
            let numInLine = index + 1
            
            switch name {
                
                case "Billy Crystal":
                    deliLine.insert(name, atIndex: 0)
                    upNext = "Welcome Billy! You can sit wherever you like."
                
                case "Meg Ryan":
                    deliLine.insert(name, atIndex: 0)
                    upNext = "Welcome Meg! You can sit wherever you like."
                
                case deliLine[0]:
                    upNext = "Welcome \(name), you're first in line!"
                
                default:
                    upNext = "Welcome \(name), you're number \(numInLine) in line."
            }
            
            
        }
        
        return upNext
        
    }
    
    
    func nowServing() -> String {
        
        var nowServingString = ""
        
        if deliLine.count == 0 {
            
            nowServingString = "There is no one to be served."
            
        } else {
            
            for (index, name) in deliLine.enumerate() {
                
                nowServingString = "Now serving \(name)!"
                deliLine.removeAtIndex(index)
                
            }
        }
        
        return nowServingString
    }
    
    
    
    func deliLineDescription() -> String {
        
        var deliLineDescriptionString = ""
        
        if deliLine.count == 0 {
            
            deliLineDescriptionString = "The line is currently empty."
            
        } else {
            
            deliLineDescriptionString = "The line is:\n"
            
            for (index,name) in deliLine.enumerate() {
                
                let num = index + 1
                
                deliLineDescriptionString.appendContentsOf("\(num). \(name)")
            }
            
        }
        
        
        return deliLineDescriptionString
    }
    
    
}

