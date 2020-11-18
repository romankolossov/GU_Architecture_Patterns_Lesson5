//
//  TaskCreationViewController.swift
//  Composite
//
//  Created by Роман Колосов on 18.11.2020.
//

import UIKit

class TaskCreationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    
    
    @IBAction func addTaskButton(_ sender: UIButton) {
    }
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        guard let taskVC = storyboard?.instantiateViewController(withIdentifier: "TaskViewController") as? TaskViewController else { fatalError() }
        
        dismiss(animated: true, completion: nil)
        present(taskVC, animated: true, completion: nil)
    }
    

    

}
