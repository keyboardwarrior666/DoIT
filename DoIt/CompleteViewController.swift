//
//  CompleteViewController.swift
//  DoIt
//
//  Created by Johan Scholtz on 2017/03/08.
//  Copyright © 2017 Johan Scholtz. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    var task : Task? = nil
 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important {
            taskLabel.text = "✮\(task!.name!)"
        } else{
            taskLabel?.text = task!.name
        }
        

        // Do any additional setup after loading the view.
    }

   
    @IBAction func completeTapped(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
     
        navigationController!.popViewController(animated: true)
    }

}
