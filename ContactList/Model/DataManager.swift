//
//  DataManager.swift
//  ContactList
//
//  Created by Александр Данилов on 22.05.2022.
//

import Foundation

class DataManager {
    var names = ["Joey", "Chandler", "Ross", "Rachel", "Monica", "Phoebe"]
    var surnames = ["Tribbiani", "Bing", "Geller", "Green", "Geller-Bing", "Buffay"]
    var emails = ["doesnt_share_food", "janice.come.back", "dinosauross", "rkgreen_fashion", "chef.geller", "smelly_cat"]
        .map { $0 + "@gmail.com" }
    var phones = ["5551122", "5553344", "5556677", "5558899", "5550011", "5551234"]
}
