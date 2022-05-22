//
//  Person.swift
//  ContactList
//
//  Created by Александр Данилов on 22.05.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullname: String {
        name + " " + surname
    }
    
    static func getContactList() -> [Person] {
        var contactList: [Person] = []
        
        let dataManager = DataManager()
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let emails = dataManager.emails.shuffled()
        let phones = dataManager.phones.shuffled()
        
        for index in 0...dataManager.names.count - 1 {
            let person = Person(name: names[index], surname: surnames[index], email: emails[index], phone: phones[index])
            contactList.append(person)
        }
        
        return contactList
    }
}
