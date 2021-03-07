//
//  Model.swift
//  Tables WatchKit Extension
//
//  Created by Сергей Лавров on 07.03.2021.
//

import Foundation

struct Model {
    var title: String
    var text: String
    
    static func getData() -> [Model] {
        return [
            Model(title: "1", text: "111"),
            Model(title: "22", text: "222 222"),
            Model(title: "333", text: "333 333 333"),
            Model(title: "4444", text: "444 444 444 444"),
            Model(title: "55555", text: "555 555 555 555 555")
        ]
    }
}
