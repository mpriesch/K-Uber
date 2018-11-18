//
//  InterfaceController.swift
//  MyApp WatchKit Extension
//
//  Created by Student on 19.10.18.
//  Copyright © 2018 Student. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        if segueIdentifier == "hierarchicalpush" {
            print("segue \(segueIdentifier)")
            return ["Message" : "Some ingredients for your recipe needed !"]
            }
        else {
            print("unknow segue \(segueIdentifier)")
            return nil
            }
        }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
