//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Chris Kauth on 6/12/17.
//  Copyright © 2017 Chris Kauth. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //Create a task from the outlet information
        
        //Command to initialize core data
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        //Load new task
        let task = Task(context: context)
        task.name = taskNameTextField.text
        task.important = importantSwitch.isOn
        
        //Save task in core data
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Navigate back to the previous controller screen
        navigationController!.popViewController(animated: true)
        
    }
    

}
