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
        for (index, item) in Model.getData().enumerated() {
            let controller = table.rowController(at: index) as! TableRowController
            controller.itemLabel.setText(item.title)
        }
    }

    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
        return Model.getData()[rowIndex]
    }
}
