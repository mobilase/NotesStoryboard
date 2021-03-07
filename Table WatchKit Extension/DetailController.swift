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
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
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
