//
//  CombinedViewController.swift
//  Poll
//
//  Created by Conner on 7/26/18.
//  Copyright © 2018 Conner. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VotingSegue" || segue.identifier == "ResultsSegue" {
            if let vc = segue.destination as? VoteControllerProtocol {
                vc.voteController = voteController
            }
        }
    }
    
    var voteController: VoteController?
}
