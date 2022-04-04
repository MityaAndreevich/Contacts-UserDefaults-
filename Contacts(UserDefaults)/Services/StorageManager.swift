//
//  StorageManager.swift
//  Contacts(UserDefaults)
//
//  Created by Dmitry Logachev on 01.04.2022.
//

import Foundation

class StorageManager {
    static let shared  = StorageManager()
    
    private let userDefaults = UserDefaults.standard
    private let key = "contacts"
    private let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    private let archiveURL: URL
    
    private init() {
        archiveURL = documentDirectory.appendingPathComponent("Contacts").appendingPathExtension("plist")
    }
    
    func save(contact: Contact) {
        var contacts = fetchContacts()
        contacts.append(contact)
        guard let data = try? PropertyListEncoder().encode(contacts) else { return }
        try? data.write(to: archiveURL, options: .noFileProtection)
    }
    
    func fetchContacts() -> [Contact] {
        guard let data = try? Data(contentsOf: archiveURL) else { return  [] }
        guard let contacts = try? PropertyListDecoder().decode([Contact].self, from: data) else { return [] }
        return contacts
    }
    
    func deleteContact(at index: Int) {
        var contacts = fetchContacts()
        contacts.remove(at: index)
        guard let data = try? PropertyListEncoder().encode(contacts) else { return }
        try? data.write(to: archiveURL, options: .noFileProtection)
    }
}

