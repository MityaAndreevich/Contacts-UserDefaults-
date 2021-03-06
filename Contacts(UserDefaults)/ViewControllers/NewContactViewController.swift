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
        
        nameTextField.addTarget(
            self,
            action: #selector(nameTextFieldDidChange),
            for: .editingChanged
        )
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        saveAndExit()
    }
    
    @objc private func nameTextFieldDidChange() {
        guard let name = nameTextField.text else { return }
        doneButton.isEnabled = !name.isEmpty
    }
    
    private func saveAndExit() {
        guard let name = nameTextField.text else { return }
        guard let surname = surnameTextField.text else { return }
        
        let fullName = "\(name) \(surname)"
        StorageManager.shared.save(contact: fullName)
        delegate.saveContact(fullName)
        dismiss(animated: true)
    }
}

