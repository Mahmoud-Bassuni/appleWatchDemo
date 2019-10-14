//
//  InterfaceController.swift
//  watchDemo WatchKit Extension
//
//  Created by Nada Gamal on 10/7/19.
//  Copyright © 2019 Sarmady. All rights reserved.
//

import WatchKit
import Foundation
class InterfaceController: WKInterfaceController {
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    var value : Int64 = 0
    var Tempvalue : Int64 = 0
    var iscalculationg = false
    var op = ""
    @IBOutlet var lblResult: WKInterfaceLabel!
    
    @IBAction func acBtnAction() {
        Tempvalue = 0
        value = 0
        lblResult.setText("\(value)")
        iscalculationg = false
    }
    @IBAction func oneBtnAction() {
        addToNumber(num: 1)
    }
    @IBAction func twoBtnAction() {
         addToNumber(num: 2)
    }
    @IBAction func threeBtnAction() {
         addToNumber(num: 3)
    }
    @IBAction func fourBtnAction() {
         addToNumber(num: 4)
    }
    @IBAction func fiveBtnAction() {
         addToNumber(num: 5)
    }
    @IBAction func sixBtnAction() {
         addToNumber(num: 6)
    }
    @IBAction func sevenBtnAction() {
         addToNumber(num: 7)
    }
    @IBAction func eightBtnAction() {
         addToNumber(num: 8)
    }
    @IBAction func nineBtnAction() {
         addToNumber(num: 9)
    }
    @IBAction func zeroBtnAction() {
         addToNumber(num: 0)
    }
    @IBAction func decimalBtnAction() {
    }
    @IBAction func addBtnAction() {
        addOperation(op: "Add")
    }
    @IBAction func subtractBtnAction() {
         addOperation(op: "Sub")
    }
    @IBAction func multiplyBtnAction() {
         addOperation(op: "Mul")
    }
    @IBAction func divideBtnAction() {
         addOperation(op: "Div")
    }
    func addToNumber(num : Int64){
        
        if(value == 0){
            value = num
            lblResult.setText("\(num)")
        }
        else {
           let result =  String(value) + String(num)
            value = Int64(result)!
            lblResult.setText(result)
        }
    }
        func addOperation(op: String){
            if (!iscalculationg) {
                Tempvalue = value
                value = 0
                if (op == "Add") {
                    self.op = "Add"
                    lblResult.setText("+")
    
                } else if (op == "Sub") {
                    self.op = "Sub"
                    lblResult.setText("-")
    
                } else if (op == "Mul") {
                    self.op = "Mul"
                    lblResult.setText("*")
    
                } else if (op == "Div") {
                    self.op = "Div"
                    lblResult.setText("/")
    
                } else { //Error
    
                }
    
                iscalculationg = true
    
            }
        }
    
        @IBAction func equalBtnAction() {
            if (iscalculationg) {
                var tempRes : Int64 = 0
                if (self.op == "Add") {
                    tempRes = Tempvalue + value
                } else if (self.op == "Sub") {
                    tempRes = Tempvalue - value
                } else if (self.op == "Mul") {
                    tempRes = Tempvalue * value
                } else if (self.op == "Div") {
                    tempRes = Tempvalue / value
                } else { //Error
    
                }
                lblResult.setText("\(tempRes)")
                iscalculationg = false
    
            } else {
                lblResult.setText("\(value)")
            }
    
        }
}



