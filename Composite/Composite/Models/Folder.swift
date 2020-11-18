//
//  Folder.swift
//  Composite
//
//  Created by Роман Колосов on 18.11.2020.
//

import Foundation

class Folder: Taskable {
    var name: String
    var tasks: [Taskable] = []

    var description: String {
        let taskName = tasks.compactMap { $0.description }.joined(separator: ", ")
        return "folder \(name) contains files: \(taskName)"
    }

    init(name: String) {
        self.name = name
    }

    func open() {
        print("open \(description)")
        print("open tasks:")
        tasks.forEach { $0.open() }
    }
}
