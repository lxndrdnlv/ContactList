//
//  InfoViewController.swift
//  ContactList
//
//  Created by Александр Данилов on 22.05.2022.
//

import UIKit

class InfoViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    //MARK: - Public Properties
    var phone = ""
    var email = ""
    var person = ""
    
    //MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = person
        phoneLabel.text = "Phone: \(phone)"
        emailLabel.text = "Email: \(email)"
    }

}
