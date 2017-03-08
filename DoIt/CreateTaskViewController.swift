//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Johan Scholtz on 2017/03/08.
//  Copyright © 2017 Johan Scholtz. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var classNameTxtField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = ViewController()
    
    @IBAction func addTapped(_ sender: Any) {
        
        let task = Task()
        task.name = classNameTxtField.text!
        task.important = importantSwitch.isOn
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
}
