//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Conner on 7/26/18.
//  Copyright © 2018 Conner. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        passVoteControllerToChildViewControllers()
    }
    
    func passVoteControllerToChildViewControllers() {
        for childController in children {
            if let vc = childController as? VoteControllerProtocol {
                vc.voteController = voteController
            }
        }
    }
    
    // MARK: - Properties
    var voteController = VoteController()

}
