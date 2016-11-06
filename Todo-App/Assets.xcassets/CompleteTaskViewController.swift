//
//  CompleteTaskViewController.swift
//  Todo-App
//
//  Created by Andrew on 2016-11-03.
//  Copyright © 2016 Andrew. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task : Task? = nil

    
    @IBOutlet var taskLabel: UILabel!
    
    @IBAction func completeTask(_ sender: AnyObject) {  
        
              let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        navigationController!.popViewController(animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        if task!.important {
            taskLabel.text = "! \(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }
        
        // Do any additional setup after loading the view.
    }

    

}
