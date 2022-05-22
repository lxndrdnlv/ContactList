//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Александр Данилов on 22.05.2022.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    //MARK: - Public Properties
    var contactList: [Person] = []

    //MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let infoVC = segue.destination as! InfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        infoVC.phone = contactList[indexPath.row].phone
        infoVC.email = contactList[indexPath.row].email
        infoVC.person = contactList[indexPath.row].fullname
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CLcell", for: indexPath)
        cell.textLabel?.text = contactList[indexPath.row].fullname
        return cell
    }
    
}
