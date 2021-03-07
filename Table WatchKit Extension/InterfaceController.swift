//
//  InterfaceController.swift
//  Table WatchKit Extension
//
//  Created by Сергей Лавров on 08.03.2021.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        table.setNumberOfRows(Model.getData().count, withRowType: "tableId")
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
