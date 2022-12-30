//
//  ViewController.swift
//  AlertsDemo
//
//  Created by Stef Castillo on 12/29/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        presentMyAlert()
    }
    
    func presentMyAlert() {
        let myAlert = UIAlertController(title: "Delete Note", message: "Deletions cannot be undone.", preferredStyle: .actionSheet)
        
        //action
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {_ in
            print("Cancel option selected by user")
        }
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) {_ in
            print("User selected delete option")
        }
        
        let archiveAction = UIAlertAction(title: "Archive", style: .default) {_ in
            print("User selected the archive option")
        }
        
//        myAlert.addAction(cancelAction)
//        myAlert.addAction(deleteAction)
        [cancelAction,deleteAction,archiveAction].forEach{myAlert.addAction($0)}
        
        present(myAlert, animated: true)
    }


}

