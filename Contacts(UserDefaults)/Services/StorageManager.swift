//
//  StorageManager.swift
//  Contacts(UserDefaults)
//
//  Created by Dmitry Logachev on 01.04.2022.
//

/*import Foundation

class StorageManager {
    static let shared  = StorageManager()
    
    private let userDefaults = UserDefaults.standard
    private let key = "contacts"
    
    private init() {}
    
    func save(contact: String) {
        var contacts = fetchContacts()
        contacts.append(contact)
        userDefaults.set(contacts, forKey: key)
    }
    
    func fetchContacts() -> [String] {
        if let contacts = UserDefaults.value(forKey: key) as? [String] {
            return contacts
        }
        return []
    }
    
    func deleteContact(at index: Int) {
        var contacts = fetchContacts()
        contacts.remove(at: index)
        userDefaults.set(contacts, forKey: key)
    }
}
*/
