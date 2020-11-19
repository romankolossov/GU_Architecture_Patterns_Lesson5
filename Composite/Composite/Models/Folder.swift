//
//  Folder.swift
//  Composite
//
//  Created by Роман Колосов on 18.11.2020.
//

import Foundation

class TaskFolder: Taskable {
    var name: String
    var tasks: [Taskable] = []

    var description: String {
        let taskName = tasks.compactMap { $0.description }.joined(separator: ", ")
        
        return "folder \(name) contains tasks: \(taskName)"
    }

    init(name: String) {
        self.name = name
    }
}
