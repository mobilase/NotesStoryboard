//
//  AddNoteController.swift
//  NotesStoryboard WatchKit Extension
//
//  Created by Сергей Лавров on 08.03.2021.
//

import WatchKit
import Foundation


class AddNoteController: WKInterfaceController {

    @IBOutlet weak var titleEdit: WKInterfaceTextField!
    @IBOutlet weak var textEdit: WKInterfaceTextField!
    var title: String = ""
    var text: String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let model  = context as? Note {
            titleEdit.setText(model.title)
            textEdit.setText(model.text)
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

    @IBAction func changeTitle(_ value: NSString?) {
        title = value! as String
    }
    
    @IBAction func changeText(_ value: NSString?) {
        text = value! as String
    }
    
    @IBAction func saveButton() {
        Note.notes.append(Note(title: title, text: text))
        self.pop()
    }
}
