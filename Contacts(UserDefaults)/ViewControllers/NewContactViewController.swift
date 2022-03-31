//
//  NewContactViewController.swift
//  Contacts(UserDefaults)
//
//  Created by Dmitry Logachev on 29.03.2022.
//

import UIKit

class NewContactViewController: UIViewController {
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    
    var delegate: NewContactViewControllerDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
    }
    

}

