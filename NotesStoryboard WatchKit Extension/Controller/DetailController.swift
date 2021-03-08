//
//  DetailController.swift
//  Table WatchKit Extension
//
//  Created by Сергей Лавров on 08.03.2021.
//

import WatchKit
import Foundation


class DetailController: WKInterfaceController {

    @IBOutlet weak var titleLabel: WKInterfaceLabel!
    @IBOutlet weak var textLabel: WKInterfaceLabel!
    var model: Note = Note(title: "", text: "")
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        if let model = context as? Note {
            titleLabel.setText(model.title)
            textLabel.setText(model.text)
        }
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
        return model
    }
}
