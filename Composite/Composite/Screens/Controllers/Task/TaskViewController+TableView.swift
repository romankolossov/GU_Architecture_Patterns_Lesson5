//
//  TaskViewController+TableView.swift
//  Composite
//
//  Created by Роман Колосов on 18.11.2020.
//

import UIKit

// MARK: - UITableViewDataSource

extension TaskViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rootTaskFolder.tasks.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 121
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as? TaskCell else { fatalError() }
        
        let task = rootTaskFolder.tasks[indexPath.row]

        cell.taskName.text = task.name
        cell.taskDescription.text = task.description
        
        return cell
    }
}

// MARK: UITableViewDelegate

extension TaskViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        return
    }
}
