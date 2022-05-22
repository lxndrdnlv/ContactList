//
//  DetailedContactsTableViewController.swift
//  ContactList
//
//  Created by Александр Данилов on 22.05.2022.
//

import UIKit

class DetailedContactsTableViewController: UITableViewController {
    
    var contactList: [Person] = []

    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DCLcell", for: indexPath)
        
        let person = contactList[indexPath.section]
        
        if indexPath.row == 0 {
            cell.textLabel?.text = person.phone
            cell.imageView?.image = UIImage(systemName: "phone")
        } else {
            cell.textLabel?.text = person.email
            cell.imageView?.image = UIImage(systemName: "mail")
        }
        
        return cell
    }
    
}
