//
//  Model.swift
//  Tables WatchKit Extension
//
//  Created by Сергей Лавров on 07.03.2021.
//

import Foundation

class Note {
    var title: String
    var text: String
    
    init (title: String, text: String) {
        self.title = title
        self.text = text
    }
    
    static var notes: [Note] = [
        Note(title: "1", text: "111"),
        Note(title: "22", text: "222 222"),
        Note(title: "333", text: "333 333 333"),
        Note(title: "4444", text: "444 444 444 444"),
        Note(title: "55555", text: "555 555 555 555 555")
    ]
    
    static func getData() -> [Note] {
        return notes
    }
}
