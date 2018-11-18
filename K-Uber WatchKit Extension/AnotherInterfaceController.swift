//
//  AnotherInterfaceController.swift
//  MyApp WatchKit Extension
//
//  Created by Michael Priesch on 05.11.18.
//  Copyright © 2018 Student. All rights reserved.
//

import WatchKit
import Foundation


class AnotherInterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        print("we got context: \(context ?? "warn:no− context−given−on−awake")")
        if let dict = context as? NSDictionary{
            // modal sends us Soup no 19
            if let val = dict ["SoupNo"]{
                switch val{
                case is Int :
                print("Soup no: \(val)")
                default:
                print("did not expect \(val)")
            }
            // push sends us Message ’Fail fast!’
        }else if let msg = dict ["Message"]
            { print ("Message = \(msg)")
        }else{
                print ("No idea what to do with ’\( dict ) ’")
        }
        
            // Configure interface
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
