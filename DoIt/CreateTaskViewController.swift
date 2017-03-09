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
    
    
    
    @IBAction func addTapped(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = classNameTxtField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Pop back
        
        navigationController!.popViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
}
