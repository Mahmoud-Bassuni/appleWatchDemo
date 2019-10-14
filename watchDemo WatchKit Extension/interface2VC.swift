//
//  interface2VC.swift
//  watchDemo WatchKit Extension
//
//  Created by Nada Gamal on 10/14/19.
//  Copyright © 2019 Sarmady. All rights reserved.
//


import WatchKit
import Foundation
class interface2VC: WKInterfaceController {

    
    var data = ["USA","KSA","EGY","FR","Ger","USA","KSA","EGY","FR","Ger","USA","KSA","EGY","FR","Ger"]
    @IBOutlet var tblViewProp: WKInterfaceTable!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        loadTableData()
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    func loadTableData(){
        tblViewProp.setNumberOfRows(data.count, withRowType: "firstRow")
        for (index, element) in data.enumerated() {
            let row = tblViewProp.rowController(at: index) as! firstRowVC
            row.lblProp.setText(element)
        }
    }
    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
        return data[rowIndex]
    }
//    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
//        print(data[rowIndex])
//    }
}
