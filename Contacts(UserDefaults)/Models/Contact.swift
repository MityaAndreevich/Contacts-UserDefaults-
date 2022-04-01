//
//  Contact.swift
//  Contacts(UserDefaults)
//
//  Created by Dmitry Logachev on 30.03.2022.
//

import Foundation

struct Contact: Codable {
    let name: String
    let surname: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}
 
