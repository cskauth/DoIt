//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Chris Kauth on 6/12/17.
//  Copyright © 2017 Chris Kauth. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    
    var task = Task()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
    }

    
    
    @IBAction func completeTapped(_ sender: Any) {
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


}
