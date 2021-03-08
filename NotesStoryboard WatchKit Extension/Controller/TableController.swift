//
//  InterfaceController.swift
//  Table WatchKit Extension
//
//  Created by Сергей Лавров on 08.03.2021.
//

import WatchKit
import Foundation

class TableController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        table.setNumberOfRows(Note.getData().count, withRowType: "tableId")
        for (index, item) in Note.getData().enumerated() {
            let controller = table.rowController(at: index) as! TableRowController
            controller.itemLabel.setText(item.title)
        }
    }

    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
        return Note.getData()[rowIndex]
    }
}
