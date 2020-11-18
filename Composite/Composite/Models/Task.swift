//
//  Task.swift
//  Composite
//
//  Created by Роман Колосов on 18.11.2020.
//

import Foundation

class Task: Taskable {
    var name: String
    var creator: String

    var description: String {
        return "task \(name) created by \(creator)"
    }

    init(name: String, creator: String) {
        self.name = name
        self.creator = creator
    }

    func open() {
        print("open \(description)")
    }
}
