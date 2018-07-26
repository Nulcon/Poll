//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Conner on 7/26/18.
//  Copyright © 2018 Conner. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voteController?.votes.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VoteCell", for: indexPath)
        let vote = voteController?.votes[indexPath.row]
        cell.textLabel?.text = vote?.name
        cell.detailTextLabel?.text = vote?.response

        return cell
    }
    
    // MARK: - Properties
    var voteController: VoteController?
}
