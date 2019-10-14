//
//  interface3VC.swift
//  watchDemo WatchKit Extension
//
//  Created by Nada Gamal on 10/14/19.
//  Copyright © 2019 Sarmady. All rights reserved.
//

import WatchKit
import Foundation

class interface3VC: WKInterfaceController {
    @IBOutlet var lblProp: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        lblProp.setText(context as? String)
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
