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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
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
