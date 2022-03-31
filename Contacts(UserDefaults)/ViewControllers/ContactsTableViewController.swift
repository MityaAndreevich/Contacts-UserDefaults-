//
//  ContactsTableViewController.swift
//  Contacts(UserDefaults)
//
//  Created by Dmitry Logachev on 29.03.2022.
//

import UIKit

protocol NewContactViewControllerDelegate {
    func saveContact(_ contact: String)
}

class ContactsTableViewController: UITableViewController {
    
    private var contacts: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newContactVC = segue.destination as! NewContactViewController
        newContactVC.delegate = self
    }
}

extension ContactsTableViewController: NewContactViewControllerDelegate {
    func saveContact(_ contact: String) {
        contacts.append(contact)
        tableView.reloadData()
    }
}
