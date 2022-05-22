//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Александр Данилов on 22.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let contacts = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers(with: contacts)
    }
    
    private func setupViewControllers(with contactList: [Person]) {
        let navigationVC = viewControllers?.first as! UINavigationController
        let contactListVC = navigationVC.topViewController as! ContactListTableViewController
        let anotherNavigationVC = viewControllers?.last as! UINavigationController
        let detailedVC = anotherNavigationVC.topViewController as! DetailedContactsTableViewController
        
        contactListVC.contactList = contacts
        detailedVC.contactList = contacts
    }
    
}
