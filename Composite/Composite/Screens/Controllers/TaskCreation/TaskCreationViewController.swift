//
//  TaskCreationViewController.swift
//  Composite
//
//  Created by Роман Колосов on 18.11.2020.
//

import UIKit

protocol TaskCreationViewControllerDelegate: class {
    func addTaskFolder(_ folder: TaskFolder)
}

class TaskCreationViewController: UIViewController {
    
    @IBOutlet weak var folderTextField: UITextField!
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var creatorTextField: UITextField!
    
    @IBOutlet weak var notificationLabel: UILabel!
    
    weak var taskCreationVCDelegate: TaskCreationViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        notificationLabel.isHidden = true
    }
    
    // MARK: - Actions
    
    @IBAction func addTaskButton(_ sender: UIButton) {
        guard let folderName = folderTextField.text, folderName != "",
              let taskName = taskTextField.text, taskName != "",
              let creatorName = creatorTextField.text, creatorName != ""
        else {
            notificationLabel.isHidden = false
            notificationLabel.text = "Fields must be filled in. Please, try again"
            return
        }
        let folderContainer = TaskFolder(name: "folderContainer")
        
        let folder = TaskFolder(name: folderName)
        let task = Task(name: taskName, creator: creatorName)
        
        folder.tasks = [task]
        folderContainer.tasks = [task, folder]
        
        taskCreationVCDelegate?.addTaskFolder(folderContainer)
        
        guard let taskVC = storyboard?.instantiateViewController(withIdentifier: "TaskViewController") as? TaskViewController else { fatalError() }
        
        dismiss(animated: true, completion: nil)
        present(taskVC, animated: true, completion: nil)
    }
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        guard let taskVC = storyboard?.instantiateViewController(withIdentifier: "TaskViewController") as? TaskViewController else { fatalError() }
        
        dismiss(animated: true, completion: nil)
        present(taskVC, animated: true, completion: nil)
    }
}
