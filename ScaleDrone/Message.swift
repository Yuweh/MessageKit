//
//  Message.swift
//  ScaleDrone
//
//  Created by Francis Jemuel Bergonia on 3/17/20.
//  Copyright © 2020 Xi Apps. All rights reserved.
//

import Foundation
import UIKit
import MessageKit

struct Member {
  let name: String
  let color: UIColor
}

struct Message {
  let member: Member
  let text: String
  let messageId: String
}

extension Message: MessageType {
    var sender: SenderType {
        return Sender(id: member.name, displayName: member.name)
    }
    
    var sentDate: Date {
        return Date()
    }
    
    var kind: MessageKind {
        return .text(text)
    }
}
