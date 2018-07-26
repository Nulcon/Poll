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

        // Do any additional setup after loading the view.
        passVoteControllerToChildViewControllers()
    }
    
    func passVoteControllerToChildViewControllers() {
        for childController in children {
            if let vc = childController as? VoteControllerProtocol {
                vc.voteController = voteController
            }
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Properties
    let voteController: VoteController?

}
