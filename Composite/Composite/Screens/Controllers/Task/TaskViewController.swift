//
//  TaskViewController.swift
//  Composite
//
//  Created by Роман Колосов on 17.11.2020.
//

import UIKit

protocol Taskable {
    var name: String { get }
    var description: String { get }
}

class TaskViewController: UIViewController {
    
    @IBOutlet private weak var taskTableView: UITableView! {
        didSet {
            taskTableView.dataSource = self
            taskTableView.delegate = self
            taskTableView.register(UINib(nibName: String(describing: TaskCell.self), bundle: Bundle.main), forCellReuseIdentifier: String(describing: TaskCell.self))
        }
    }
    public var publicTaskTableView: UITableView! {
        taskTableView
    }
    
    let rootTaskFolder = TaskFolder(name: "RootFolder")
    
    // Some properties
    var folderToFulfill: TaskFolder?

    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "to_TaskCreationVC":
            guard let destination =  segue.destination as? TaskCreationViewController else { return }
            
            destination.taskCreationVCDelegate = self
            
            destination.folderToFulfill = folderToFulfill
        default:
            break
        }
    }
}


