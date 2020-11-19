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
        
        rootTaskFolder.tasks.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 188
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as? TaskCell else { fatalError() }
        
        let task = rootTaskFolder.tasks[indexPath.row]

        cell.taskName.text = task.name
        cell.taskDescriptionTextView.text = task.description
        
        return cell
    }
}

// MARK: UITableViewDelegate

extension TaskViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let folder = rootTaskFolder.tasks[indexPath.row] as? TaskFolder else { return }
        
        folderToFulfill = folder
        
        performSegue(withIdentifier: "to_TaskCreationVC", sender: nil)
        
        return
    }
}

// MARK: - TaskCreationViewControllerDelegate

extension TaskViewController: TaskCreationViewControllerDelegate {
    func addTaskFolder(_ folder: TaskFolder) {
        rootTaskFolder.tasks = rootTaskFolder.tasks + folder.tasks
        
        publicTaskTableView.reloadData()
    }
}
