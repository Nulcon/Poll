//
//  VotingViewController.swift
//  Poll
//
//  Created by Conner on 7/26/18.
//  Copyright © 2018 Conner. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitVote(_ sender: Any) {
        guard let name = nameTextField.text,
            let response = responseTextField.text else { return }
        
        voteController?.createVote(name: name, response: response)
    }
    
    // MARK: - Properties
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var responseTextField: UITextField!
    
    var voteController: VoteController?
}
