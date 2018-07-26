//
//  VoteController.swift
//  Poll
//
//  Created by Conner on 7/26/18.
//  Copyright © 2018 Conner. All rights reserved.
//

import Foundation

class VoteController {
    
    func createVote(name: String, response: String) {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
    
    var votes: [Vote] = []
}
