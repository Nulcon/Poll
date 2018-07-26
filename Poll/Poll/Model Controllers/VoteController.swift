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
        votes.append(Vote(name: name, response: response))
    }
    
    var votes: [Vote] = []
}
