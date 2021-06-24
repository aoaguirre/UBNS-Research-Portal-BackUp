//
//  ConversationsModels.swift
//  University at Buffalo Research Portal
//
//  Created by Alex Aguirre on 6/17/21.
//

import Foundation

struct Conversation {
    let id: String
    let name: String
    let otherUserEmail: String
    let latestMessage: LatestMessage
}

struct LatestMessage {
    let date: String
    let text: String
    let isRead: Bool
}
